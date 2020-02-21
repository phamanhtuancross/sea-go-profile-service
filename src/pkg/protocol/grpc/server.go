package grpc

import (
	"context"
	v12 "github.com/tuanpa28/profile-service/src/pkg/api/v1"
	"google.golang.org/grpc"
	"log"
	"net"
	"os"
	"os/signal"
)

func RunServer(ctx context.Context, v1Api v12.ProfileServiceServer, port string) error {
	listener, err := net.Listen("tcp", ":" + port)


	if err != nil {
		return err
	}

	server := grpc.NewServer()
	v12.RegisterProfileServiceServer(server,  v1Api)
	c := make(chan os.Signal, 1)
	signal.Notify(c, os.Interrupt)


	go func() {
		for range c {
			log.Print("shutting down grpc server.........")
			server.GracefulStop()
			<- ctx.Done()
		}
	}()

	log.Println("starting grpc server..... on port"  + port)

	return server.Serve(listener)
}
