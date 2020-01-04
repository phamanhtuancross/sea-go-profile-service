package cmd

import (
	grpc "../protocol/grpc"
	rest "../protocol/rest"
	v1 "../service/v1"
	"context"
	"database/sql"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
)

type Config struct {
	GRPCPort            string
	HTTPPort			string
	DataStoreDBHost     string
	DataStoreDBUser     string
	DataStoreDBPassword string
	DataStoreDBSchema   string
}

func RunServer(config Config) error {

	ctx := context.Background()

	if len(config.GRPCPort) == 0 {
		return fmt.Errorf("Invalid gRPC Port for gRPC server '%s'", config.GRPCPort)
	}

	if len(config.HTTPPort) == 0 {
		return fmt.Errorf("Invalid gRPC Port for HTTP server '%s'", config.HTTPPort)
	}

	param := "parseTime=true"
	dsn := fmt.Sprintf("%s:%s@tcp(%s)/%s?%s",
		config.DataStoreDBUser,
		config.DataStoreDBPassword,
		config.DataStoreDBHost,
		config.DataStoreDBSchema,
		param)

	db,err := sql.Open("mysql", dsn)
	defer db.Close()

	if err != nil {
		fmt.Errorf("Failed to open database -> '%v'" , err)
	}

	var v1Api = v1.NewProfileServiceServer(db)

	go func() {
		_ = rest.RunServer(ctx, config.GRPCPort, config.HTTPPort)
	}()
	return grpc.RunServer(ctx, v1Api, config.GRPCPort)
}
