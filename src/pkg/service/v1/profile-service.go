package v1

import (
	"context"
	"crypto/rsa"
	"database/sql"
	"encoding/json"
	"fmt"
	jwt "github.com/dgrijalva/jwt-go"
	"github.com/gogo/protobuf/proto"
	"github.com/tuanpa28/profile-service/src/pkg/api/v1"
	timeUtil2 "github.com/tuanpa28/profile-service/src/pkg/util/timeUtil"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"io"
	"io/ioutil"
	"math"
	"os"
	"sync"
	"time"
)

const  ApiVersion  = "v1"


type ProfileServiceServer struct {
	database *sql.DB
	jwtPrivatekey *rsa.PrivateKey

	savedFeatures [] *v1.Feature
	savedFashionCategories [] *v1.FashionCategory

	mu sync.Mutex
	routeNotes map[string][] *v1.RouteNote
}

func (s *ProfileServiceServer) checkAPIVersion( apiVersion string) error {
	if len(apiVersion) > 0 {
		if ApiVersion != apiVersion {
			return status.Errorf(codes.Unimplemented, "Unsupported API version: Service are supporting api version '%s', But asked for api version '%s'", ApiVersion, apiVersion)

		}
	}

	return nil
}

func (s * ProfileServiceServer) connect(ctx context.Context) (*sql.Conn, error) {
	conn, err := s.database.Conn(ctx)
	if err != nil {
		return nil, status.Error(codes.Unknown, "Failed to connect database -> Error :" + err.Error())
	}

	return conn, nil
}

func (s *ProfileServiceServer) Home(context.Context, *v1.HomeRequest) (*v1.HomeResponse, error) {
	return &v1.HomeResponse{
		Message: "Well come to profile service",
	}, nil
}


const INSERT_NEW_ACCOUNT = "INSERT INTO Account(`id`,`email`, `first_name`, `last_name`,`phone_number`,`user_name`,`password`,`avatar_url`,`dob`,`created_time`,`updated_time`,`more_info`) VALUES(?, ?, ?,?,?,?,?,?,?,?,?,?)"
func (s *ProfileServiceServer) Register(ctx context.Context, req *v1.RegisterRequest) (*v1.RegisterResponse, error) {
	if err := s.checkAPIVersion(req.Api); err != nil {
		return nil, err
	}

	conn, err := s.connect(ctx)

	if err != nil {
		return nil, err
	}

	defer conn.Close()

	var id = timeUtil2.GenerateIdString()

	_, err = conn.ExecContext(ctx, INSERT_NEW_ACCOUNT,
		id,
		req.AccountInfo.Email,
		req.AccountInfo.FirstName,
		req.AccountInfo.LastName,
		req.AccountInfo.PhoneNumber,
		req.AccountInfo.UserName,
		req.AccountInfo.Password,
		req.AccountInfo.AvatarUrl,
		req.AccountInfo.Dob,
		req.AccountInfo.CreatedTime,
		req.AccountInfo.UpdatedTime,
		req.AccountInfo.MoreInfo)
	if err != nil {
		return nil, status.Errorf(codes.Unknown, "Failed to insert data to account table" + err.Error())
	}

	var accountInfo = req.AccountInfo
	accountInfo.Id = id

	return &v1.RegisterResponse{
		Api:         ApiVersion,
		Token:       id,
		AccountInfo: accountInfo,
	},nil
}

//func (s *ProfileServiceServer) GetUserInfo(stream v1Proto.ProfileService_GetUserInfoServer) error {
//
//	for {
//		args, err := stream.Recv()
//		if err != nil {
//			if err == io.EOF {
//				return nil
//			}
//
//			return err
//		}
//
//		accountInfo := s.database.
//	}
//	return nil
//}


//func (s *ProfileServiceServer) GetAll(req *v1Proto.GetAllRequest,stream v1Proto.ProfileService_GetAllServer) error {
//	_, err := s.database.Query("SELECT * FROM Account")
//
//	if err != nil {
//		if err == io.EOF {
//			return nil
//		}
//	}
//
//	stream.Send(&v1Proto.GetAllResponse{
//		Api:         "12354",
//		AccountInfo: nil,
//	})
//
//	return nil
//
//}

func (s *ProfileServiceServer) GetFeature(ctx context.Context, point *v1.Point) (*v1.Feature, error) {
	for _, feature := range s.savedFeatures {
		if proto.Equal(feature.Location, point) {
			return feature, nil
		}
	}

	return &v1.Feature{Location: point}, nil
}

func (s *ProfileServiceServer) ListFeatures(rect *v1.Rectangle, stream v1.ProfileService_ListFeaturesServer) error {
	for _, feature := range s.savedFeatures {
		if inRange(feature.Location, rect) {
			if err := stream.Send(feature); err != nil {
				return err
			}
		}
	}

	return nil
}

func (s *ProfileServiceServer) ListFashionCategories(empty *v1.EmptyParameters, stream v1.ProfileService_ListFashionCategoriesServer) error {
		for _, category := range  s.savedFashionCategories {
			if err := stream.Send(category); err != nil {
				return err
			}
		}

		return nil
}


//func (s *ProfileServiceServer) ListFashionCategories(param *empty.Empty, stream v1Proto.ProfileService_ListFashionCategoriesServer) error {
//	for _, category := range  s.savedFashionCategories {
//		if err := stream.Send(category); err != nil {
//			return err
//		}
//	}
//
//	return nil
//}

func inRange(point *v1.Point, rect *v1.Rectangle) bool {
	left := math.Min(float64(rect.Lo.Longitude), float64(rect.Hi.Longitude))
	right := math.Max(float64(rect.Lo.Longitude), float64(rect.Hi.Longitude))
	top := math.Max(float64(rect.Lo.Latitude), float64(rect.Hi.Latitude))
	bottom := math.Min(float64(rect.Lo.Latitude), float64(rect.Hi.Latitude))

	if float64(point.Longitude) >= left &&
		float64(point.Longitude) <= right &&
		float64(point.Latitude) >= bottom &&
		float64(point.Latitude) <= top {
		return true
	}
	return false
}

func (s *ProfileServiceServer) RecordRoute(stream v1.ProfileService_RecordRouteServer) error {
	var pointCount, featureCount, distance int32
	var lastPoint *v1.Point
	startTime := time.Now()
	for {
		point, err := stream.Recv()
		if err == io.EOF {
			endTime := time.Now()
			return stream.SendAndClose(&v1.RouteSummary{
				PointCount:   pointCount,
				FeatureCount: featureCount,
				Distance:     distance,
				ElapsedTime:  int32(endTime.Sub(startTime).Seconds()),
			})
		}
		if err != nil {
			return err
		}
		pointCount++
		for _, feature := range s.savedFeatures {
			if proto.Equal(feature.Location, point) {
				featureCount++
			}
		}
		if lastPoint != nil {
			distance += calcDistance(lastPoint, point)
		}
		lastPoint = point
	}
}

func calcDistance(p1 *v1.Point, p2 *v1.Point) int32 {
	const CordFactor float64 = 1e7
	const R = float64(6371000) // earth radius in metres
	lat1 := toRadians(float64(p1.Latitude) / CordFactor)
	lat2 := toRadians(float64(p2.Latitude) / CordFactor)
	lng1 := toRadians(float64(p1.Longitude) / CordFactor)
	lng2 := toRadians(float64(p2.Longitude) / CordFactor)
	dlat := lat2 - lat1
	dlng := lng2 - lng1

	a := math.Sin(dlat/2)*math.Sin(dlat/2) +
		math.Cos(lat1)*math.Cos(lat2)*
			math.Sin(dlng/2)*math.Sin(dlng/2)
	c := 2 * math.Atan2(math.Sqrt(a), math.Sqrt(1-a))

	distance := R * c
	return int32(distance)
}

func toRadians(num float64) float64 {
	return num * math.Pi / float64(180)
}

func (s *ProfileServiceServer) RouteChat(stream v1.ProfileService_RouteChatServer) error {
	for {
		in, err := stream.Recv()
		if err == io.EOF {
			return nil
		}
		if err != nil {
			return err
		}
		key := serialize(in.Location)

		s.mu.Lock()
		s.routeNotes[key] = append(s.routeNotes[key], in)
		// Note: this copy prevents blocking other clients while serving this one.
		// We don't need to do a deep copy, because elements in the slice are
		// insert-only and never modified.
		rn := make([]*v1.RouteNote, len(s.routeNotes[key]))
		copy(rn, s.routeNotes[key])
		s.mu.Unlock()

		for _, note := range rn {
			if err := stream.Send(note); err != nil {
				return err
			}
		}
	}
}

func serialize(point *v1.Point) string {
	return fmt.Sprintf("%d %d", point.Latitude, point.Longitude)
}


func NewProfileServiceServer(database *sql.DB) v1.ProfileServiceServer {
	var service = ProfileServiceServer{database: database}
	service.loadLocalDataForSaveFeatures()
	service.loadLocalDataForSavedFashionCategories()

	key, _ := ioutil.ReadFile("./src/configs/jwt/private.pem")
	parsedKey, err := jwt.ParseRSAPrivateKeyFromPEM(key)
	if err != nil {
		print(err)
	}
	service.jwtPrivatekey = parsedKey
	return &service
}

func (s * ProfileServiceServer) loadLocalDataForSaveFeatures() {
	jsonFile, err := os.Open("./src/pkg/service/v1/db.json")

	if err != nil {
		fmt.Println(err)
	}

	byteValue, _ := ioutil.ReadAll(jsonFile)
	json.Unmarshal(byteValue, &s.savedFeatures)
	defer jsonFile.Close()
}

func (s * ProfileServiceServer) loadLocalDataForSavedFashionCategories() {

	jsonFile, err := os.Open("./src/pkg/service/v1/categories.db.json")
	if err != nil {
		fmt.Println(err)
	}

	byteValue, _ := ioutil.ReadAll(jsonFile)
	json.Unmarshal(byteValue, &s.savedFashionCategories)
	defer jsonFile.Close()
}


func (s *ProfileServiceServer) Login(ctx context.Context,request *v1.LoginRequest) (*v1.LoginResponse, error) {
	user, err := getUser(s.database, request.Username)
	if err != nil {
		return nil, err
	}

	if user.Password != request.Password {
		return  nil,  grpc.Errorf(codes.PermissionDenied, "")
	}

	token := jwt.New(jwt.SigningMethodRS256)

	token.Claims = jwt.MapClaims{
		"exp": time.Now().Add(time.Hour * 72).Unix(),
		"iss": "profile.service",
		"iat": "time.Now().Unix()",
		"email": user.Email,
		"sub": user.Password,
	}

	tokenString, err := token.SignedString(s.jwtPrivatekey)
	if err != nil {
		return nil, grpc.Errorf(codes.Internal, err.Error())
	}

	return &v1.LoginResponse{
		Token:                tokenString,
		UserInfo:             user,
	}, nil

}

func getUser(db *sql.DB, username string) (*v1.Account,error) {
	var	user = &v1.Account{}

	rows, err := db.Query("SELECT id, email,user_name, password, phone_number, avatar_url, last_name, first_name  FROM Account WHERE user_name=?", username)
	if err != nil {
		return nil, err
	}

	defer  rows.Close()

	for rows.Next() {
		if err := rows.Scan(
			&user.Id,
			&user.Email,
			&user.UserName,
			&user.Password,
			&user.PhoneNumber,
			&user.AvatarUrl,
			&user.LastName,
			&user.FirstName); err != nil {
			return nil, err
		}
	}

	return user,nil
}





