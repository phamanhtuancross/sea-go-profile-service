package grpc

import (
	"context"
	"google.golang.org/grpc"
	"log"
	"net"
	"os"
	"os/signal"
)
import v1 "../../api/v1"

func RunServer(ctx context.Context, v1Api v1.ProfileServiceServer, port string) error {
	listener, err := net.Listen("tcp", ":" + port)


	if err != nil {
		return err
	}

	server := grpc.NewServer()
	v1.RegisterProfileServiceServer(server,  v1Api)
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
