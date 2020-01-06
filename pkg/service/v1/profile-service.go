package v1

import (
	timeUtil "../../util/timeUtil"
	"context"
	"database/sql"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)
import v1Proto "../../api/v1"

const  ApiVersion  = "v1"


type ProfileServiceServer struct {
	database *sql.DB
}


func NewProfileServiceServer(database *sql.DB) v1Proto.ProfileServiceServer {
	return &ProfileServiceServer{database: database}
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

func (s *ProfileServiceServer) Home(context.Context, *v1Proto.HomeRequest) (*v1Proto.HomeResponse, error) {
	return &v1Proto.HomeResponse{
		Message: "Well come to profile service",
	}, nil
}


const INSERT_NEW_ACCOUNT = "INSERT INTO Account(`id`,`email`, `first_name`, `last_name`,`phone_number`,`user_name`,`password`,`avatar_url`,`dob`,`created_time`,`updated_time`) VALUES(?, ?, ?,?,?,?,?,?,?,?,?)"
func (s *ProfileServiceServer) Register(ctx context.Context, req *v1Proto.RegisterRequest) (*v1Proto.RegisterResponse, error) {
	if err := s.checkAPIVersion(req.Api); err != nil {
		return nil, err
	}

	conn, err := s.connect(ctx)

	if err != nil {
		return nil, err
	}

	defer conn.Close()

	var id = timeUtil.GenerateIdString()

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
		req.AccountInfo.UpdatedTime)
	if err != nil {
		return nil, status.Errorf(codes.Unknown, "Failed to insert data to account table" + err.Error())
	}

	var accountInfo = req.AccountInfo
	accountInfo.Id = id

	return &v1Proto.RegisterResponse{
		Api:         ApiVersion,
		Token:       id,
		AccountInfo: accountInfo,
	},nil
}


