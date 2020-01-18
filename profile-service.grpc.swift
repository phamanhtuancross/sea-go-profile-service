//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: profile-service.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Foundation
import Dispatch
import SwiftGRPC
import SwiftProtobuf

internal protocol V1_ProfileServiceHomeCall: ClientCallUnary {}

fileprivate final class V1_ProfileServiceHomeCallBase: ClientCallUnaryBase<V1_HomeRequest, V1_HomeResponse>, V1_ProfileServiceHomeCall {
  override class var method: String { return "/v1.ProfileService/Home" }
}

internal protocol V1_ProfileServiceRegisterCall: ClientCallUnary {}

fileprivate final class V1_ProfileServiceRegisterCallBase: ClientCallUnaryBase<V1_RegisterRequest, V1_RegisterResponse>, V1_ProfileServiceRegisterCall {
  override class var method: String { return "/v1.ProfileService/Register" }
}

internal protocol V1_ProfileServiceGetFeatureCall: ClientCallUnary {}

fileprivate final class V1_ProfileServiceGetFeatureCallBase: ClientCallUnaryBase<V1_Point, V1_Feature>, V1_ProfileServiceGetFeatureCall {
  override class var method: String { return "/v1.ProfileService/GetFeature" }
}

internal protocol V1_ProfileServiceListFeaturesCall: ClientCallServerStreaming {
  /// Do not call this directly, call `receive()` in the protocol extension below instead.
  func _receive(timeout: DispatchTime) throws -> V1_Feature?
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (ResultOrRPCError<V1_Feature?>) -> Void) throws
}

internal extension V1_ProfileServiceListFeaturesCall {
  /// Call this to wait for a result. Blocking.
  func receive(timeout: DispatchTime = .distantFuture) throws -> V1_Feature? { return try self._receive(timeout: timeout) }
}

fileprivate final class V1_ProfileServiceListFeaturesCallBase: ClientCallServerStreamingBase<V1_Rectangle, V1_Feature>, V1_ProfileServiceListFeaturesCall {
  override class var method: String { return "/v1.ProfileService/ListFeatures" }
}

internal protocol V1_ProfileServiceRecordRouteCall: ClientCallClientStreaming {
  /// Send a message to the stream. Nonblocking.
  func send(_ message: V1_Point, completion: @escaping (Error?) -> Void) throws
  /// Do not call this directly, call `send()` in the protocol extension below instead.
  func _send(_ message: V1_Point, timeout: DispatchTime) throws

  /// Call this to close the connection and wait for a response. Blocking.
  func closeAndReceive() throws -> V1_RouteSummary
  /// Call this to close the connection and wait for a response. Nonblocking.
  func closeAndReceive(completion: @escaping (ResultOrRPCError<V1_RouteSummary>) -> Void) throws
}

internal extension V1_ProfileServiceRecordRouteCall {
  /// Send a message to the stream and wait for the send operation to finish. Blocking.
  func send(_ message: V1_Point, timeout: DispatchTime = .distantFuture) throws { try self._send(message, timeout: timeout) }
}

fileprivate final class V1_ProfileServiceRecordRouteCallBase: ClientCallClientStreamingBase<V1_Point, V1_RouteSummary>, V1_ProfileServiceRecordRouteCall {
  override class var method: String { return "/v1.ProfileService/RecordRoute" }
}

internal protocol V1_ProfileServiceRouteChatCall: ClientCallBidirectionalStreaming {
  /// Do not call this directly, call `receive()` in the protocol extension below instead.
  func _receive(timeout: DispatchTime) throws -> V1_RouteNote?
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (ResultOrRPCError<V1_RouteNote?>) -> Void) throws

  /// Send a message to the stream. Nonblocking.
  func send(_ message: V1_RouteNote, completion: @escaping (Error?) -> Void) throws
  /// Do not call this directly, call `send()` in the protocol extension below instead.
  func _send(_ message: V1_RouteNote, timeout: DispatchTime) throws

  /// Call this to close the sending connection. Blocking.
  func closeSend() throws
  /// Call this to close the sending connection. Nonblocking.
  func closeSend(completion: (() -> Void)?) throws
}

internal extension V1_ProfileServiceRouteChatCall {
  /// Call this to wait for a result. Blocking.
  func receive(timeout: DispatchTime = .distantFuture) throws -> V1_RouteNote? { return try self._receive(timeout: timeout) }
}

internal extension V1_ProfileServiceRouteChatCall {
  /// Send a message to the stream and wait for the send operation to finish. Blocking.
  func send(_ message: V1_RouteNote, timeout: DispatchTime = .distantFuture) throws { try self._send(message, timeout: timeout) }
}

fileprivate final class V1_ProfileServiceRouteChatCallBase: ClientCallBidirectionalStreamingBase<V1_RouteNote, V1_RouteNote>, V1_ProfileServiceRouteChatCall {
  override class var method: String { return "/v1.ProfileService/RouteChat" }
}


/// Instantiate V1_ProfileServiceServiceClient, then call methods of this protocol to make API calls.
internal protocol V1_ProfileServiceService: ServiceClient {
  /// Synchronous. Unary.
  func home(_ request: V1_HomeRequest) throws -> V1_HomeResponse
  /// Asynchronous. Unary.
  func home(_ request: V1_HomeRequest, completion: @escaping (V1_HomeResponse?, CallResult) -> Void) throws -> V1_ProfileServiceHomeCall

  /// Synchronous. Unary.
  func register(_ request: V1_RegisterRequest) throws -> V1_RegisterResponse
  /// Asynchronous. Unary.
  func register(_ request: V1_RegisterRequest, completion: @escaping (V1_RegisterResponse?, CallResult) -> Void) throws -> V1_ProfileServiceRegisterCall

  /// Synchronous. Unary.
  func getFeature(_ request: V1_Point) throws -> V1_Feature
  /// Asynchronous. Unary.
  func getFeature(_ request: V1_Point, completion: @escaping (V1_Feature?, CallResult) -> Void) throws -> V1_ProfileServiceGetFeatureCall

  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  func listFeatures(_ request: V1_Rectangle, completion: ((CallResult) -> Void)?) throws -> V1_ProfileServiceListFeaturesCall

  /// Asynchronous. Client-streaming.
  /// Use methods on the returned object to stream messages and
  /// to close the connection and wait for a final response.
  func recordRoute(completion: ((CallResult) -> Void)?) throws -> V1_ProfileServiceRecordRouteCall

  /// Asynchronous. Bidirectional-streaming.
  /// Use methods on the returned object to stream messages,
  /// to wait for replies, and to close the connection.
  func routeChat(completion: ((CallResult) -> Void)?) throws -> V1_ProfileServiceRouteChatCall

}

internal final class V1_ProfileServiceServiceClient: ServiceClientBase, V1_ProfileServiceService {
  /// Synchronous. Unary.
  internal func home(_ request: V1_HomeRequest) throws -> V1_HomeResponse {
    return try V1_ProfileServiceHomeCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  internal func home(_ request: V1_HomeRequest, completion: @escaping (V1_HomeResponse?, CallResult) -> Void) throws -> V1_ProfileServiceHomeCall {
    return try V1_ProfileServiceHomeCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func register(_ request: V1_RegisterRequest) throws -> V1_RegisterResponse {
    return try V1_ProfileServiceRegisterCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  internal func register(_ request: V1_RegisterRequest, completion: @escaping (V1_RegisterResponse?, CallResult) -> Void) throws -> V1_ProfileServiceRegisterCall {
    return try V1_ProfileServiceRegisterCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func getFeature(_ request: V1_Point) throws -> V1_Feature {
    return try V1_ProfileServiceGetFeatureCallBase(channel)
      .run(request: request, metadata: metadata)
  }
  /// Asynchronous. Unary.
  internal func getFeature(_ request: V1_Point, completion: @escaping (V1_Feature?, CallResult) -> Void) throws -> V1_ProfileServiceGetFeatureCall {
    return try V1_ProfileServiceGetFeatureCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  internal func listFeatures(_ request: V1_Rectangle, completion: ((CallResult) -> Void)?) throws -> V1_ProfileServiceListFeaturesCall {
    return try V1_ProfileServiceListFeaturesCallBase(channel)
      .start(request: request, metadata: metadata, completion: completion)
  }

  /// Asynchronous. Client-streaming.
  /// Use methods on the returned object to stream messages and
  /// to close the connection and wait for a final response.
  internal func recordRoute(completion: ((CallResult) -> Void)?) throws -> V1_ProfileServiceRecordRouteCall {
    return try V1_ProfileServiceRecordRouteCallBase(channel)
      .start(metadata: metadata, completion: completion)
  }

  /// Asynchronous. Bidirectional-streaming.
  /// Use methods on the returned object to stream messages,
  /// to wait for replies, and to close the connection.
  internal func routeChat(completion: ((CallResult) -> Void)?) throws -> V1_ProfileServiceRouteChatCall {
    return try V1_ProfileServiceRouteChatCallBase(channel)
      .start(metadata: metadata, completion: completion)
  }

}

/// To build a server, implement a class that conforms to this protocol.
/// If one of the methods returning `ServerStatus?` returns nil,
/// it is expected that you have already returned a status to the client by means of `session.close`.
internal protocol V1_ProfileServiceProvider: ServiceProvider {
  func home(request: V1_HomeRequest, session: V1_ProfileServiceHomeSession) throws -> V1_HomeResponse
  func register(request: V1_RegisterRequest, session: V1_ProfileServiceRegisterSession) throws -> V1_RegisterResponse
  func getFeature(request: V1_Point, session: V1_ProfileServiceGetFeatureSession) throws -> V1_Feature
  func listFeatures(request: V1_Rectangle, session: V1_ProfileServiceListFeaturesSession) throws -> ServerStatus?
  func recordRoute(session: V1_ProfileServiceRecordRouteSession) throws -> V1_RouteSummary?
  func routeChat(session: V1_ProfileServiceRouteChatSession) throws -> ServerStatus?
}

extension V1_ProfileServiceProvider {
  internal var serviceName: String { return "v1.ProfileService" }

  /// Determines and calls the appropriate request handler, depending on the request's method.
  /// Throws `HandleMethodError.unknownMethod` for methods not handled by this service.
  internal func handleMethod(_ method: String, handler: Handler) throws -> ServerStatus? {
    switch method {
    case "/v1.ProfileService/Home":
      return try V1_ProfileServiceHomeSessionBase(
        handler: handler,
        providerBlock: { try self.home(request: $0, session: $1 as! V1_ProfileServiceHomeSessionBase) })
          .run()
    case "/v1.ProfileService/Register":
      return try V1_ProfileServiceRegisterSessionBase(
        handler: handler,
        providerBlock: { try self.register(request: $0, session: $1 as! V1_ProfileServiceRegisterSessionBase) })
          .run()
    case "/v1.ProfileService/GetFeature":
      return try V1_ProfileServiceGetFeatureSessionBase(
        handler: handler,
        providerBlock: { try self.getFeature(request: $0, session: $1 as! V1_ProfileServiceGetFeatureSessionBase) })
          .run()
    case "/v1.ProfileService/ListFeatures":
      return try V1_ProfileServiceListFeaturesSessionBase(
        handler: handler,
        providerBlock: { try self.listFeatures(request: $0, session: $1 as! V1_ProfileServiceListFeaturesSessionBase) })
          .run()
    case "/v1.ProfileService/RecordRoute":
      return try V1_ProfileServiceRecordRouteSessionBase(
        handler: handler,
        providerBlock: { try self.recordRoute(session: $0 as! V1_ProfileServiceRecordRouteSessionBase) })
          .run()
    case "/v1.ProfileService/RouteChat":
      return try V1_ProfileServiceRouteChatSessionBase(
        handler: handler,
        providerBlock: { try self.routeChat(session: $0 as! V1_ProfileServiceRouteChatSessionBase) })
          .run()
    default:
      throw HandleMethodError.unknownMethod
    }
  }
}

internal protocol V1_ProfileServiceHomeSession: ServerSessionUnary {}

fileprivate final class V1_ProfileServiceHomeSessionBase: ServerSessionUnaryBase<V1_HomeRequest, V1_HomeResponse>, V1_ProfileServiceHomeSession {}

internal protocol V1_ProfileServiceRegisterSession: ServerSessionUnary {}

fileprivate final class V1_ProfileServiceRegisterSessionBase: ServerSessionUnaryBase<V1_RegisterRequest, V1_RegisterResponse>, V1_ProfileServiceRegisterSession {}

internal protocol V1_ProfileServiceGetFeatureSession: ServerSessionUnary {}

fileprivate final class V1_ProfileServiceGetFeatureSessionBase: ServerSessionUnaryBase<V1_Point, V1_Feature>, V1_ProfileServiceGetFeatureSession {}

internal protocol V1_ProfileServiceListFeaturesSession: ServerSessionServerStreaming {
  /// Send a message to the stream. Nonblocking.
  func send(_ message: V1_Feature, completion: @escaping (Error?) -> Void) throws
  /// Do not call this directly, call `send()` in the protocol extension below instead.
  func _send(_ message: V1_Feature, timeout: DispatchTime) throws

  /// Close the connection and send the status. Non-blocking.
  /// This method should be called if and only if your request handler returns a nil value instead of a server status;
  /// otherwise SwiftGRPC will take care of sending the status for you.
  func close(withStatus status: ServerStatus, completion: (() -> Void)?) throws
}

internal extension V1_ProfileServiceListFeaturesSession {
  /// Send a message to the stream and wait for the send operation to finish. Blocking.
  func send(_ message: V1_Feature, timeout: DispatchTime = .distantFuture) throws { try self._send(message, timeout: timeout) }
}

fileprivate final class V1_ProfileServiceListFeaturesSessionBase: ServerSessionServerStreamingBase<V1_Rectangle, V1_Feature>, V1_ProfileServiceListFeaturesSession {}

internal protocol V1_ProfileServiceRecordRouteSession: ServerSessionClientStreaming {
  /// Do not call this directly, call `receive()` in the protocol extension below instead.
  func _receive(timeout: DispatchTime) throws -> V1_Point?
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (ResultOrRPCError<V1_Point?>) -> Void) throws

  /// Exactly one of these two methods should be called if and only if your request handler returns nil;
  /// otherwise SwiftGRPC will take care of sending the response and status for you.
  /// Close the connection and send a single result. Non-blocking.
  func sendAndClose(response: V1_RouteSummary, status: ServerStatus, completion: (() -> Void)?) throws
  /// Close the connection and send an error. Non-blocking.
  /// Use this method if you encountered an error that makes it impossible to send a response.
  /// Accordingly, it does not make sense to call this method with a status of `.ok`.
  func sendErrorAndClose(status: ServerStatus, completion: (() -> Void)?) throws
}

internal extension V1_ProfileServiceRecordRouteSession {
  /// Call this to wait for a result. Blocking.
  func receive(timeout: DispatchTime = .distantFuture) throws -> V1_Point? { return try self._receive(timeout: timeout) }
}

fileprivate final class V1_ProfileServiceRecordRouteSessionBase: ServerSessionClientStreamingBase<V1_Point, V1_RouteSummary>, V1_ProfileServiceRecordRouteSession {}

internal protocol V1_ProfileServiceRouteChatSession: ServerSessionBidirectionalStreaming {
  /// Do not call this directly, call `receive()` in the protocol extension below instead.
  func _receive(timeout: DispatchTime) throws -> V1_RouteNote?
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (ResultOrRPCError<V1_RouteNote?>) -> Void) throws

  /// Send a message to the stream. Nonblocking.
  func send(_ message: V1_RouteNote, completion: @escaping (Error?) -> Void) throws
  /// Do not call this directly, call `send()` in the protocol extension below instead.
  func _send(_ message: V1_RouteNote, timeout: DispatchTime) throws

  /// Close the connection and send the status. Non-blocking.
  /// This method should be called if and only if your request handler returns a nil value instead of a server status;
  /// otherwise SwiftGRPC will take care of sending the status for you.
  func close(withStatus status: ServerStatus, completion: (() -> Void)?) throws
}

internal extension V1_ProfileServiceRouteChatSession {
  /// Call this to wait for a result. Blocking.
  func receive(timeout: DispatchTime = .distantFuture) throws -> V1_RouteNote? { return try self._receive(timeout: timeout) }
}

internal extension V1_ProfileServiceRouteChatSession {
  /// Send a message to the stream and wait for the send operation to finish. Blocking.
  func send(_ message: V1_RouteNote, timeout: DispatchTime = .distantFuture) throws { try self._send(message, timeout: timeout) }
}

fileprivate final class V1_ProfileServiceRouteChatSessionBase: ServerSessionBidirectionalStreamingBase<V1_RouteNote, V1_RouteNote>, V1_ProfileServiceRouteChatSession {}
