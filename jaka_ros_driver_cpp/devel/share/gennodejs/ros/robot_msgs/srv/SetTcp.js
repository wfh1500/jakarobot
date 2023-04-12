// Auto-generated. Do not edit!

// (in-package robot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetTcpRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.tool_num = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = [];
      }
      if (initObj.hasOwnProperty('tool_num')) {
        this.tool_num = initObj.tool_num
      }
      else {
        this.tool_num = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTcpRequest
    // Serialize message field [pose]
    bufferOffset = _arraySerializer.float32(obj.pose, buffer, bufferOffset, null);
    // Serialize message field [tool_num]
    bufferOffset = _serializer.int16(obj.tool_num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTcpRequest
    let len;
    let data = new SetTcpRequest(null);
    // Deserialize message field [pose]
    data.pose = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [tool_num]
    data.tool_num = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pose.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_msgs/SetTcpRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64d9a8fcd4a1fe5623c2ecb2890f780e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] pose
    
    # tool_num: 0~7
    int16 tool_num
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTcpRequest(null);
    if (msg.pose !== undefined) {
      resolved.pose = msg.pose;
    }
    else {
      resolved.pose = []
    }

    if (msg.tool_num !== undefined) {
      resolved.tool_num = msg.tool_num;
    }
    else {
      resolved.tool_num = 0
    }

    return resolved;
    }
};

class SetTcpResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ret = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('ret')) {
        this.ret = initObj.ret
      }
      else {
        this.ret = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetTcpResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.int16(obj.ret, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetTcpResponse
    let len;
    let data = new SetTcpResponse(null);
    // Deserialize message field [ret]
    data.ret = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_msgs/SetTcpResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '76c68a2c5e109f4d6a4dc1cfc355f405';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int16 ret
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetTcpResponse(null);
    if (msg.ret !== undefined) {
      resolved.ret = msg.ret;
    }
    else {
      resolved.ret = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetTcpRequest,
  Response: SetTcpResponse,
  md5sum() { return '3d15cf469e59f026a4e4b350932a8496'; },
  datatype() { return 'robot_msgs/SetTcp'; }
};
