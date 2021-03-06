// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/core/framework/node_def.proto
//
// For information on using the generated types, please see the documenation:
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

public struct Tensorflow_NodeDef: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".NodeDef"

  /// The name given to this operator. Used for naming inputs,
  /// logging, visualization, etc.  Unique within a single GraphDef.
  /// Must match the regexp "[A-Za-z0-9.][A-Za-z0-9_./]*".
  public var name: String = String()

  /// The operation name.  There may be custom parameters in attrs.
  /// Op names starting with an underscore are reserved for internal use.
  public var op: String = String()

  /// Each input is "node:src_output" with "node" being a string name and
  /// "src_output" indicating which output tensor to use from "node". If
  /// "src_output" is 0 the ":0" suffix can be omitted.  Regular inputs
  /// may optionally be followed by control inputs that have the format
  /// "^node".
  public var input: [String] = []

  /// A (possibly partial) specification for the device on which this
  /// node should be placed.
  /// The expected syntax for this string is as follows:
  ///
  /// DEVICE_SPEC ::= PARTIAL_SPEC
  ///
  /// PARTIAL_SPEC ::= ("/" CONSTRAINT) *
  /// CONSTRAINT ::= ("job:" JOB_NAME)
  ///              | ("replica:" [1-9][0-9]*)
  ///              | ("task:" [1-9][0-9]*)
  ///              | ( ("gpu" | "cpu") ":" ([1-9][0-9]* | "*") )
  ///
  /// Valid values for this string include:
  /// * "/job:worker/replica:0/task:1/device:GPU:3"  (full specification)
  /// * "/job:worker/device:GPU:3"                   (partial specification)
  /// * ""                                    (no specification)
  ///
  /// If the constraints do not resolve to a single device (or if this
  /// field is empty or not present), the runtime will attempt to
  /// choose a device automatically.
  public var device: String = String()

  /// Operation-specific graph-construction-time configuration.
  /// Note that this should include all attrs defined in the
  /// corresponding OpDef, including those with a value matching
  /// the default -- this allows the default to change and makes
  /// NodeDefs easier to interpret on their own.  However, if
  /// an attr with a default is not specified in this list, the
  /// default will be used.
  /// The "names" (keys) must match the regexp "[a-z][a-z0-9_]+" (and
  /// one of the names from the corresponding OpDef's attr field).
  /// The values must have a type matching the corresponding OpDef
  /// attr's type field.
  /// TODO(josh11b): Add some examples here showing best practices.
  public var attr: Dictionary<String,Tensorflow_AttrValue> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeSingularStringField(value: &self.op)
      case 3: try decoder.decodeRepeatedStringField(value: &self.input)
      case 4: try decoder.decodeSingularStringField(value: &self.device)
      case 5: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Tensorflow_AttrValue>.self, value: &self.attr)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.op.isEmpty {
      try visitor.visitSingularStringField(value: self.op, fieldNumber: 2)
    }
    if !self.input.isEmpty {
      try visitor.visitRepeatedStringField(value: self.input, fieldNumber: 3)
    }
    if !self.device.isEmpty {
      try visitor.visitSingularStringField(value: self.device, fieldNumber: 4)
    }
    if !self.attr.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Tensorflow_AttrValue>.self, value: self.attr, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_NodeDef: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "op"),
    3: .same(proto: "input"),
    4: .same(proto: "device"),
    5: .same(proto: "attr"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_NodeDef) -> Bool {
    if self.name != other.name {return false}
    if self.op != other.op {return false}
    if self.input != other.input {return false}
    if self.device != other.device {return false}
    if self.attr != other.attr {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
