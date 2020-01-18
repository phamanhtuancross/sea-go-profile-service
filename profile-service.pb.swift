// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: profile-service.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct V1_Account {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var id: String {
    get {return _storage._id}
    set {_uniqueStorage()._id = newValue}
  }

  var email: String {
    get {return _storage._email}
    set {_uniqueStorage()._email = newValue}
  }

  var firstName: String {
    get {return _storage._firstName}
    set {_uniqueStorage()._firstName = newValue}
  }

  var lastName: String {
    get {return _storage._lastName}
    set {_uniqueStorage()._lastName = newValue}
  }

  var phoneNumber: String {
    get {return _storage._phoneNumber}
    set {_uniqueStorage()._phoneNumber = newValue}
  }

  var userName: String {
    get {return _storage._userName}
    set {_uniqueStorage()._userName = newValue}
  }

  var password: String {
    get {return _storage._password}
    set {_uniqueStorage()._password = newValue}
  }

  var avatarURL: String {
    get {return _storage._avatarURL}
    set {_uniqueStorage()._avatarURL = newValue}
  }

  var moreInfo: String {
    get {return _storage._moreInfo}
    set {_uniqueStorage()._moreInfo = newValue}
  }

  var dob: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._dob ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._dob = newValue}
  }
  /// Returns true if `dob` has been explicitly set.
  var hasDob: Bool {return _storage._dob != nil}
  /// Clears the value of `dob`. Subsequent reads from it will return its default value.
  mutating func clearDob() {_uniqueStorage()._dob = nil}

  var createdTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._createdTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._createdTime = newValue}
  }
  /// Returns true if `createdTime` has been explicitly set.
  var hasCreatedTime: Bool {return _storage._createdTime != nil}
  /// Clears the value of `createdTime`. Subsequent reads from it will return its default value.
  mutating func clearCreatedTime() {_uniqueStorage()._createdTime = nil}

  var updatedTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._updatedTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._updatedTime = newValue}
  }
  /// Returns true if `updatedTime` has been explicitly set.
  var hasUpdatedTime: Bool {return _storage._updatedTime != nil}
  /// Clears the value of `updatedTime`. Subsequent reads from it will return its default value.
  mutating func clearUpdatedTime() {_uniqueStorage()._updatedTime = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct V1_Request {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct V1_Response {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct V1_HomeRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var api: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct V1_HomeResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var message: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct V1_RegisterRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var api: String {
    get {return _storage._api}
    set {_uniqueStorage()._api = newValue}
  }

  var accountInfo: V1_Account {
    get {return _storage._accountInfo ?? V1_Account()}
    set {_uniqueStorage()._accountInfo = newValue}
  }
  /// Returns true if `accountInfo` has been explicitly set.
  var hasAccountInfo: Bool {return _storage._accountInfo != nil}
  /// Clears the value of `accountInfo`. Subsequent reads from it will return its default value.
  mutating func clearAccountInfo() {_uniqueStorage()._accountInfo = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct V1_RegisterResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var api: String {
    get {return _storage._api}
    set {_uniqueStorage()._api = newValue}
  }

  var token: String {
    get {return _storage._token}
    set {_uniqueStorage()._token = newValue}
  }

  var accountInfo: V1_Account {
    get {return _storage._accountInfo ?? V1_Account()}
    set {_uniqueStorage()._accountInfo = newValue}
  }
  /// Returns true if `accountInfo` has been explicitly set.
  var hasAccountInfo: Bool {return _storage._accountInfo != nil}
  /// Clears the value of `accountInfo`. Subsequent reads from it will return its default value.
  mutating func clearAccountInfo() {_uniqueStorage()._accountInfo = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct V1_GetAllRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var api: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct V1_GetAllResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var api: String {
    get {return _storage._api}
    set {_uniqueStorage()._api = newValue}
  }

  var accountInfo: V1_Account {
    get {return _storage._accountInfo ?? V1_Account()}
    set {_uniqueStorage()._accountInfo = newValue}
  }
  /// Returns true if `accountInfo` has been explicitly set.
  var hasAccountInfo: Bool {return _storage._accountInfo != nil}
  /// Clears the value of `accountInfo`. Subsequent reads from it will return its default value.
  mutating func clearAccountInfo() {_uniqueStorage()._accountInfo = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

//// integration chat service inside profile service
struct V1_Point {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var latitude: Int32 = 0

  var longitude: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct V1_Rectangle {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var lo: V1_Point {
    get {return _storage._lo ?? V1_Point()}
    set {_uniqueStorage()._lo = newValue}
  }
  /// Returns true if `lo` has been explicitly set.
  var hasLo: Bool {return _storage._lo != nil}
  /// Clears the value of `lo`. Subsequent reads from it will return its default value.
  mutating func clearLo() {_uniqueStorage()._lo = nil}

  var hi: V1_Point {
    get {return _storage._hi ?? V1_Point()}
    set {_uniqueStorage()._hi = newValue}
  }
  /// Returns true if `hi` has been explicitly set.
  var hasHi: Bool {return _storage._hi != nil}
  /// Clears the value of `hi`. Subsequent reads from it will return its default value.
  mutating func clearHi() {_uniqueStorage()._hi = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct V1_Feature {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  var location: V1_Point {
    get {return _storage._location ?? V1_Point()}
    set {_uniqueStorage()._location = newValue}
  }
  /// Returns true if `location` has been explicitly set.
  var hasLocation: Bool {return _storage._location != nil}
  /// Clears the value of `location`. Subsequent reads from it will return its default value.
  mutating func clearLocation() {_uniqueStorage()._location = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct V1_RouteNote {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var location: V1_Point {
    get {return _storage._location ?? V1_Point()}
    set {_uniqueStorage()._location = newValue}
  }
  /// Returns true if `location` has been explicitly set.
  var hasLocation: Bool {return _storage._location != nil}
  /// Clears the value of `location`. Subsequent reads from it will return its default value.
  mutating func clearLocation() {_uniqueStorage()._location = nil}

  var message: String {
    get {return _storage._message}
    set {_uniqueStorage()._message = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct V1_RouteSummary {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var pointCount: Int32 = 0

  var featureCount: Int32 = 0

  var distance: Int32 = 0

  var elapsedTime: Int32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "v1"

extension V1_Account: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Account"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "email"),
    3: .standard(proto: "first_name"),
    4: .standard(proto: "last_name"),
    5: .standard(proto: "phone_number"),
    6: .standard(proto: "user_name"),
    7: .same(proto: "password"),
    8: .standard(proto: "avatar_url"),
    9: .standard(proto: "more_info"),
    10: .same(proto: "dob"),
    11: .standard(proto: "created_time"),
    12: .standard(proto: "updated_time"),
  ]

  fileprivate class _StorageClass {
    var _id: String = String()
    var _email: String = String()
    var _firstName: String = String()
    var _lastName: String = String()
    var _phoneNumber: String = String()
    var _userName: String = String()
    var _password: String = String()
    var _avatarURL: String = String()
    var _moreInfo: String = String()
    var _dob: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
    var _createdTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
    var _updatedTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _id = source._id
      _email = source._email
      _firstName = source._firstName
      _lastName = source._lastName
      _phoneNumber = source._phoneNumber
      _userName = source._userName
      _password = source._password
      _avatarURL = source._avatarURL
      _moreInfo = source._moreInfo
      _dob = source._dob
      _createdTime = source._createdTime
      _updatedTime = source._updatedTime
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._id)
        case 2: try decoder.decodeSingularStringField(value: &_storage._email)
        case 3: try decoder.decodeSingularStringField(value: &_storage._firstName)
        case 4: try decoder.decodeSingularStringField(value: &_storage._lastName)
        case 5: try decoder.decodeSingularStringField(value: &_storage._phoneNumber)
        case 6: try decoder.decodeSingularStringField(value: &_storage._userName)
        case 7: try decoder.decodeSingularStringField(value: &_storage._password)
        case 8: try decoder.decodeSingularStringField(value: &_storage._avatarURL)
        case 9: try decoder.decodeSingularStringField(value: &_storage._moreInfo)
        case 10: try decoder.decodeSingularMessageField(value: &_storage._dob)
        case 11: try decoder.decodeSingularMessageField(value: &_storage._createdTime)
        case 12: try decoder.decodeSingularMessageField(value: &_storage._updatedTime)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._id.isEmpty {
        try visitor.visitSingularStringField(value: _storage._id, fieldNumber: 1)
      }
      if !_storage._email.isEmpty {
        try visitor.visitSingularStringField(value: _storage._email, fieldNumber: 2)
      }
      if !_storage._firstName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._firstName, fieldNumber: 3)
      }
      if !_storage._lastName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._lastName, fieldNumber: 4)
      }
      if !_storage._phoneNumber.isEmpty {
        try visitor.visitSingularStringField(value: _storage._phoneNumber, fieldNumber: 5)
      }
      if !_storage._userName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._userName, fieldNumber: 6)
      }
      if !_storage._password.isEmpty {
        try visitor.visitSingularStringField(value: _storage._password, fieldNumber: 7)
      }
      if !_storage._avatarURL.isEmpty {
        try visitor.visitSingularStringField(value: _storage._avatarURL, fieldNumber: 8)
      }
      if !_storage._moreInfo.isEmpty {
        try visitor.visitSingularStringField(value: _storage._moreInfo, fieldNumber: 9)
      }
      if let v = _storage._dob {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      }
      if let v = _storage._createdTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
      }
      if let v = _storage._updatedTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 12)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: V1_Account, rhs: V1_Account) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._id != rhs_storage._id {return false}
        if _storage._email != rhs_storage._email {return false}
        if _storage._firstName != rhs_storage._firstName {return false}
        if _storage._lastName != rhs_storage._lastName {return false}
        if _storage._phoneNumber != rhs_storage._phoneNumber {return false}
        if _storage._userName != rhs_storage._userName {return false}
        if _storage._password != rhs_storage._password {return false}
        if _storage._avatarURL != rhs_storage._avatarURL {return false}
        if _storage._moreInfo != rhs_storage._moreInfo {return false}
        if _storage._dob != rhs_storage._dob {return false}
        if _storage._createdTime != rhs_storage._createdTime {return false}
        if _storage._updatedTime != rhs_storage._updatedTime {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension V1_Request: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Request"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: V1_Request, rhs: V1_Request) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension V1_Response: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Response"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: V1_Response, rhs: V1_Response) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension V1_HomeRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".HomeRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "api"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.api)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.api.isEmpty {
      try visitor.visitSingularStringField(value: self.api, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: V1_HomeRequest, rhs: V1_HomeRequest) -> Bool {
    if lhs.api != rhs.api {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension V1_HomeResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".HomeResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "message"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.message)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.message.isEmpty {
      try visitor.visitSingularStringField(value: self.message, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: V1_HomeResponse, rhs: V1_HomeResponse) -> Bool {
    if lhs.message != rhs.message {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension V1_RegisterRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".RegisterRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "api"),
    2: .standard(proto: "account_info"),
  ]

  fileprivate class _StorageClass {
    var _api: String = String()
    var _accountInfo: V1_Account? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _api = source._api
      _accountInfo = source._accountInfo
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._api)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._accountInfo)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._api.isEmpty {
        try visitor.visitSingularStringField(value: _storage._api, fieldNumber: 1)
      }
      if let v = _storage._accountInfo {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: V1_RegisterRequest, rhs: V1_RegisterRequest) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._api != rhs_storage._api {return false}
        if _storage._accountInfo != rhs_storage._accountInfo {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension V1_RegisterResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".RegisterResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "api"),
    2: .same(proto: "token"),
    3: .standard(proto: "account_info"),
  ]

  fileprivate class _StorageClass {
    var _api: String = String()
    var _token: String = String()
    var _accountInfo: V1_Account? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _api = source._api
      _token = source._token
      _accountInfo = source._accountInfo
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._api)
        case 2: try decoder.decodeSingularStringField(value: &_storage._token)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._accountInfo)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._api.isEmpty {
        try visitor.visitSingularStringField(value: _storage._api, fieldNumber: 1)
      }
      if !_storage._token.isEmpty {
        try visitor.visitSingularStringField(value: _storage._token, fieldNumber: 2)
      }
      if let v = _storage._accountInfo {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: V1_RegisterResponse, rhs: V1_RegisterResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._api != rhs_storage._api {return false}
        if _storage._token != rhs_storage._token {return false}
        if _storage._accountInfo != rhs_storage._accountInfo {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension V1_GetAllRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetAllRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "api"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.api)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.api.isEmpty {
      try visitor.visitSingularStringField(value: self.api, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: V1_GetAllRequest, rhs: V1_GetAllRequest) -> Bool {
    if lhs.api != rhs.api {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension V1_GetAllResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetAllResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "api"),
    2: .standard(proto: "account_info"),
  ]

  fileprivate class _StorageClass {
    var _api: String = String()
    var _accountInfo: V1_Account? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _api = source._api
      _accountInfo = source._accountInfo
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._api)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._accountInfo)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._api.isEmpty {
        try visitor.visitSingularStringField(value: _storage._api, fieldNumber: 1)
      }
      if let v = _storage._accountInfo {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: V1_GetAllResponse, rhs: V1_GetAllResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._api != rhs_storage._api {return false}
        if _storage._accountInfo != rhs_storage._accountInfo {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension V1_Point: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Point"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "latitude"),
    2: .same(proto: "longitude"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.latitude)
      case 2: try decoder.decodeSingularInt32Field(value: &self.longitude)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.latitude != 0 {
      try visitor.visitSingularInt32Field(value: self.latitude, fieldNumber: 1)
    }
    if self.longitude != 0 {
      try visitor.visitSingularInt32Field(value: self.longitude, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: V1_Point, rhs: V1_Point) -> Bool {
    if lhs.latitude != rhs.latitude {return false}
    if lhs.longitude != rhs.longitude {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension V1_Rectangle: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Rectangle"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "lo"),
    2: .same(proto: "hi"),
  ]

  fileprivate class _StorageClass {
    var _lo: V1_Point? = nil
    var _hi: V1_Point? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _lo = source._lo
      _hi = source._hi
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._lo)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._hi)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._lo {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._hi {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: V1_Rectangle, rhs: V1_Rectangle) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._lo != rhs_storage._lo {return false}
        if _storage._hi != rhs_storage._hi {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension V1_Feature: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Feature"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "location"),
  ]

  fileprivate class _StorageClass {
    var _name: String = String()
    var _location: V1_Point? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _name = source._name
      _location = source._location
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._name)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._location)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 1)
      }
      if let v = _storage._location {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: V1_Feature, rhs: V1_Feature) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._name != rhs_storage._name {return false}
        if _storage._location != rhs_storage._location {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension V1_RouteNote: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".RouteNote"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "location"),
    2: .same(proto: "message"),
  ]

  fileprivate class _StorageClass {
    var _location: V1_Point? = nil
    var _message: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _location = source._location
      _message = source._message
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._location)
        case 2: try decoder.decodeSingularStringField(value: &_storage._message)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._location {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._message.isEmpty {
        try visitor.visitSingularStringField(value: _storage._message, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: V1_RouteNote, rhs: V1_RouteNote) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._location != rhs_storage._location {return false}
        if _storage._message != rhs_storage._message {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension V1_RouteSummary: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".RouteSummary"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "point_count"),
    2: .standard(proto: "feature_count"),
    3: .same(proto: "distance"),
    4: .standard(proto: "elapsed_time"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.pointCount)
      case 2: try decoder.decodeSingularInt32Field(value: &self.featureCount)
      case 3: try decoder.decodeSingularInt32Field(value: &self.distance)
      case 4: try decoder.decodeSingularInt32Field(value: &self.elapsedTime)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.pointCount != 0 {
      try visitor.visitSingularInt32Field(value: self.pointCount, fieldNumber: 1)
    }
    if self.featureCount != 0 {
      try visitor.visitSingularInt32Field(value: self.featureCount, fieldNumber: 2)
    }
    if self.distance != 0 {
      try visitor.visitSingularInt32Field(value: self.distance, fieldNumber: 3)
    }
    if self.elapsedTime != 0 {
      try visitor.visitSingularInt32Field(value: self.elapsedTime, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: V1_RouteSummary, rhs: V1_RouteSummary) -> Bool {
    if lhs.pointCount != rhs.pointCount {return false}
    if lhs.featureCount != rhs.featureCount {return false}
    if lhs.distance != rhs.distance {return false}
    if lhs.elapsedTime != rhs.elapsedTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
