// Auto-generated. Do not edit!

// (in-package seed_r7_ros_controller.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class LedControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.send_number = null;
      this.script_number = null;
    }
    else {
      if (initObj.hasOwnProperty('send_number')) {
        this.send_number = initObj.send_number
      }
      else {
        this.send_number = 0;
      }
      if (initObj.hasOwnProperty('script_number')) {
        this.script_number = initObj.script_number
      }
      else {
        this.script_number = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedControlRequest
    // Serialize message field [send_number]
    bufferOffset = _serializer.uint8(obj.send_number, buffer, bufferOffset);
    // Serialize message field [script_number]
    bufferOffset = _serializer.uint16(obj.script_number, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedControlRequest
    let len;
    let data = new LedControlRequest(null);
    // Deserialize message field [send_number]
    data.send_number = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [script_number]
    data.script_number = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'seed_r7_ros_controller/LedControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '98812974496e4f17880aff57e170a1c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 send_number
    uint8 FRONT_RIGHT = 3
    uint8 REAR_RIGHT = 4
    uint8 FRONT_LEFT = 5
    uint8 REAR_LEFT = 6
    
    uint16 script_number 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedControlRequest(null);
    if (msg.send_number !== undefined) {
      resolved.send_number = msg.send_number;
    }
    else {
      resolved.send_number = 0
    }

    if (msg.script_number !== undefined) {
      resolved.script_number = msg.script_number;
    }
    else {
      resolved.script_number = 0
    }

    return resolved;
    }
};

// Constants for message
LedControlRequest.Constants = {
  FRONT_RIGHT: 3,
  REAR_RIGHT: 4,
  FRONT_LEFT: 5,
  REAR_LEFT: 6,
}

class LedControlResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedControlResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedControlResponse
    let len;
    let data = new LedControlResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.result);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'seed_r7_ros_controller/LedControlResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c22f2a1ed8654a0b365f1bb3f7ff2c0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedControlResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: LedControlRequest,
  Response: LedControlResponse,
  md5sum() { return 'f29b351f80354f5bbb09b425fecd0cc2'; },
  datatype() { return 'seed_r7_ros_controller/LedControl'; }
};
