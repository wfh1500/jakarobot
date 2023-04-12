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

class SetLoadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tool_num = null;
      this.mass = null;
      this.xc = null;
      this.yc = null;
      this.zc = null;
    }
    else {
      if (initObj.hasOwnProperty('tool_num')) {
        this.tool_num = initObj.tool_num
      }
      else {
        this.tool_num = 0;
      }
      if (initObj.hasOwnProperty('mass')) {
        this.mass = initObj.mass
      }
      else {
        this.mass = 0.0;
      }
      if (initObj.hasOwnProperty('xc')) {
        this.xc = initObj.xc
      }
      else {
        this.xc = 0.0;
      }
      if (initObj.hasOwnProperty('yc')) {
        this.yc = initObj.yc
      }
      else {
        this.yc = 0.0;
      }
      if (initObj.hasOwnProperty('zc')) {
        this.zc = initObj.zc
      }
      else {
        this.zc = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLoadRequest
    // Serialize message field [tool_num]
    bufferOffset = _serializer.int16(obj.tool_num, buffer, bufferOffset);
    // Serialize message field [mass]
    bufferOffset = _serializer.float32(obj.mass, buffer, bufferOffset);
    // Serialize message field [xc]
    bufferOffset = _serializer.float32(obj.xc, buffer, bufferOffset);
    // Serialize message field [yc]
    bufferOffset = _serializer.float32(obj.yc, buffer, bufferOffset);
    // Serialize message field [zc]
    bufferOffset = _serializer.float32(obj.zc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLoadRequest
    let len;
    let data = new SetLoadRequest(null);
    // Deserialize message field [tool_num]
    data.tool_num = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mass]
    data.mass = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [xc]
    data.xc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yc]
    data.yc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [zc]
    data.zc = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_msgs/SetLoadRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5b6ad3eafd36e92ac9631d1adde07a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 tool_num
    
    # to set robot load parameters, based on initial Tool Frame located at flange center.
    # Load mass (kg)
    float32 mass
    
    # Load Center of Mass (mm), with respect to intial Tool Frame
    float32 xc
    float32 yc
    float32 zc
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLoadRequest(null);
    if (msg.tool_num !== undefined) {
      resolved.tool_num = msg.tool_num;
    }
    else {
      resolved.tool_num = 0
    }

    if (msg.mass !== undefined) {
      resolved.mass = msg.mass;
    }
    else {
      resolved.mass = 0.0
    }

    if (msg.xc !== undefined) {
      resolved.xc = msg.xc;
    }
    else {
      resolved.xc = 0.0
    }

    if (msg.yc !== undefined) {
      resolved.yc = msg.yc;
    }
    else {
      resolved.yc = 0.0
    }

    if (msg.zc !== undefined) {
      resolved.zc = msg.zc;
    }
    else {
      resolved.zc = 0.0
    }

    return resolved;
    }
};

class SetLoadResponse {
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
    // Serializes a message object of type SetLoadResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.int16(obj.ret, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLoadResponse
    let len;
    let data = new SetLoadResponse(null);
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
    return 'robot_msgs/SetLoadResponse';
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
    const resolved = new SetLoadResponse(null);
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
  Request: SetLoadRequest,
  Response: SetLoadResponse,
  md5sum() { return 'dbe0292cc6f9be694a93bf981dcc8471'; },
  datatype() { return 'robot_msgs/SetLoad'; }
};
