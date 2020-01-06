protoc --proto_path=api/proto/v1 --proto_path=third_party --go_out=plugins=grpc:pkg/api/v1 profile-service.proto
protoc --proto_path=api/proto/v1 --proto_path=third_party --grpc-gateway_out=logtostderr=true:pkg/api/v1 profile-service.proto
protoc --proto_path=api/proto/v1 --proto_path=third_party --swagger_out=logtostderr=true:api/swagger/v1 profile-service.proto

protoc --proto_path=api/proto/v1 --proto_path=third_party  --swift_out=. api/proto/v1/profile-service.proto
protoc --proto_path=api/proto/v1 --proto_path=third_party  --swiftgrpc_out=. api/proto/v1/profile-service.proto
