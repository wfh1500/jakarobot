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

class SetUserFrameRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.user_num = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = [];
      }
      if (initObj.hasOwnProperty('user_num')) {
        this.user_num = initObj.user_num
      }
      else {
        this.user_num = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetUserFrameRequest
    // Serialize message field [pose]
    bufferOffset = _arraySerializer.float32(obj.pose, buffer, bufferOffset, null);
    // Serialize message field [user_num]
    bufferOffset = _serializer.int16(obj.user_num, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetUserFrameRequest
    let len;
    let data = new SetUserFrameRequest(null);
    // Deserialize message field [pose]
    data.pose = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [user_num]
    data.user_num = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pose.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_msgs/SetUserFrameRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b6a900a46b142e04bf4c00d1a02e35d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] pose
    
    # user_num: 0~7
    int16 user_num
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetUserFrameRequest(null);
    if (msg.pose !== undefined) {
      resolved.pose = msg.pose;
    }
    else {
      resolved.pose = []
    }

    if (msg.user_num !== undefined) {
      resolved.user_num = msg.user_num;
    }
    else {
      resolved.user_num = 0
    }

    return resolved;
    }
};

class SetUserFrameResponse {
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
    // Serializes a message object of type SetUserFrameResponse
    // Serialize message field [ret]
    bufferOffset = _serializer.int16(obj.ret, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetUserFrameResponse
    let len;
    let data = new SetUserFrameResponse(null);
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
    return 'robot_msgs/SetUserFrameResponse';
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
    const resolved = new SetUserFrameResponse(null);
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
  Request: SetUserFrameRequest,
  Response: SetUserFrameResponse,
  md5sum() { return 'f74c56afc671b9ccd78097ad9fa9b7ce'; },
  datatype() { return 'robot_msgs/SetUserFrame'; }
};
