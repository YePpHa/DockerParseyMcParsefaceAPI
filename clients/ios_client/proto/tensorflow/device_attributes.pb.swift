/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: tensorflow/core/framework/device_attributes.proto
 *
 */

import Foundation
import SwiftProtobuf


///   BusAdjacency identifies the ability of a device to participate in
///   maximally efficient DMA operations within the local context of a
///   process.
///  
///   This is currently ignored.
public enum Tensorflow_BusAdjacency: ProtobufEnum {
  public typealias RawValue = Int
  case bus0 // = 0
  case bus1 // = 1
  case busAny // = 2
  case busNumAdjacencies // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .bus0
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .bus0
    case 1: self = .bus1
    case 2: self = .busAny
    case 3: self = .busNumAdjacencies
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public init?(name: String) {
    switch name {
    case "bus0": self = .bus0
    case "bus1": self = .bus1
    case "busAny": self = .busAny
    case "busNumAdjacencies": self = .busNumAdjacencies
    default: return nil
    }
  }

  public init?(jsonName: String) {
    switch jsonName {
    case "BUS_0": self = .bus0
    case "BUS_1": self = .bus1
    case "BUS_ANY": self = .busAny
    case "BUS_NUM_ADJACENCIES": self = .busNumAdjacencies
    default: return nil
    }
  }

  public init?(protoName: String) {
    switch protoName {
    case "BUS_0": self = .bus0
    case "BUS_1": self = .bus1
    case "BUS_ANY": self = .busAny
    case "BUS_NUM_ADJACENCIES": self = .busNumAdjacencies
    default: return nil
    }
  }

  public var rawValue: Int {
    get {
      switch self {
      case .bus0: return 0
      case .bus1: return 1
      case .busAny: return 2
      case .busNumAdjacencies: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }
  }

  public var json: String {
    get {
      switch self {
      case .bus0: return "\"BUS_0\""
      case .bus1: return "\"BUS_1\""
      case .busAny: return "\"BUS_ANY\""
      case .busNumAdjacencies: return "\"BUS_NUM_ADJACENCIES\""
      case .UNRECOGNIZED(let i): return String(i)
      }
    }
  }

  public var hashValue: Int { return rawValue }

  public var debugDescription: String {
    get {
      switch self {
      case .bus0: return ".bus0"
      case .bus1: return ".bus1"
      case .busAny: return ".busAny"
      case .busNumAdjacencies: return ".busNumAdjacencies"
      case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
      }
    }
  }

}

public struct Tensorflow_DeviceAttributes: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "Tensorflow_DeviceAttributes"}
  public var protoMessageName: String {return "DeviceAttributes"}
  public var protoPackageName: String {return "tensorflow"}
  public var jsonFieldNames: [String: Int] {return [
    "name": 1,
    "deviceType": 2,
    "memoryLimit": 4,
    "busAdjacency": 5,
    "incarnation": 6,
    "physicalDeviceDesc": 7,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "name": 1,
    "device_type": 2,
    "memory_limit": 4,
    "bus_adjacency": 5,
    "incarnation": 6,
    "physical_device_desc": 7,
  ]}

  public var name: String = ""

  ///   String representation of device_type.
  public var deviceType: String = ""

  ///   Memory capacity of device in bytes.
  public var memoryLimit: Int64 = 0

  public var busAdjacency: Tensorflow_BusAdjacency = Tensorflow_BusAdjacency.bus0

  ///   A device is assigned a global unique number each time it is
  ///   initialized. "incarnation" should never be 0.
  public var incarnation: UInt64 = 0

  ///   String representation of the physical device that this device maps to.
  public var physicalDeviceDesc: String = ""

  public init() {}

  public init(name: String? = nil,
    deviceType: String? = nil,
    memoryLimit: Int64? = nil,
    busAdjacency: Tensorflow_BusAdjacency? = nil,
    incarnation: UInt64? = nil,
    physicalDeviceDesc: String? = nil)
  {
    if let v = name {
      self.name = v
    }
    if let v = deviceType {
      self.deviceType = v
    }
    if let v = memoryLimit {
      self.memoryLimit = v
    }
    if let v = busAdjacency {
      self.busAdjacency = v
    }
    if let v = incarnation {
      self.incarnation = v
    }
    if let v = physicalDeviceDesc {
      self.physicalDeviceDesc = v
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &name)
    case 2: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &deviceType)
    case 4: handled = try setter.decodeSingularField(fieldType: ProtobufInt64.self, value: &memoryLimit)
    case 5: handled = try setter.decodeSingularField(fieldType: Tensorflow_BusAdjacency.self, value: &busAdjacency)
    case 6: handled = try setter.decodeSingularField(fieldType: ProtobufFixed64.self, value: &incarnation)
    case 7: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &physicalDeviceDesc)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if name != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: name, protoFieldNumber: 1, protoFieldName: "name", jsonFieldName: "name", swiftFieldName: "name")
    }
    if deviceType != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: deviceType, protoFieldNumber: 2, protoFieldName: "device_type", jsonFieldName: "deviceType", swiftFieldName: "deviceType")
    }
    if memoryLimit != 0 {
      try visitor.visitSingularField(fieldType: ProtobufInt64.self, value: memoryLimit, protoFieldNumber: 4, protoFieldName: "memory_limit", jsonFieldName: "memoryLimit", swiftFieldName: "memoryLimit")
    }
    if busAdjacency != Tensorflow_BusAdjacency.bus0 {
      try visitor.visitSingularField(fieldType: Tensorflow_BusAdjacency.self, value: busAdjacency, protoFieldNumber: 5, protoFieldName: "bus_adjacency", jsonFieldName: "busAdjacency", swiftFieldName: "busAdjacency")
    }
    if incarnation != 0 {
      try visitor.visitSingularField(fieldType: ProtobufFixed64.self, value: incarnation, protoFieldNumber: 6, protoFieldName: "incarnation", jsonFieldName: "incarnation", swiftFieldName: "incarnation")
    }
    if physicalDeviceDesc != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: physicalDeviceDesc, protoFieldNumber: 7, protoFieldName: "physical_device_desc", jsonFieldName: "physicalDeviceDesc", swiftFieldName: "physicalDeviceDesc")
    }
  }

  public var _protoc_generated_isEmpty: Bool {
    if name != "" {return false}
    if deviceType != "" {return false}
    if memoryLimit != 0 {return false}
    if busAdjacency != Tensorflow_BusAdjacency.bus0 {return false}
    if incarnation != 0 {return false}
    if physicalDeviceDesc != "" {return false}
    return true
  }

  public func _protoc_generated_isEqualTo(other: Tensorflow_DeviceAttributes) -> Bool {
    if name != other.name {return false}
    if deviceType != other.deviceType {return false}
    if memoryLimit != other.memoryLimit {return false}
    if busAdjacency != other.busAdjacency {return false}
    if incarnation != other.incarnation {return false}
    if physicalDeviceDesc != other.physicalDeviceDesc {return false}
    return true
  }
}
