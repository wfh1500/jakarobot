// Auto-generated. Do not edit!

// (in-package robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ServoL {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoL
    // Check that the constant length array field [pose] has the right length
    if (obj.pose.length !== 6) {
      throw new Error('Unable to serialize array field pose - length must be 6')
    }
    // Serialize message field [pose]
    bufferOffset = _arraySerializer.float32(obj.pose, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoL
    let len;
    let data = new ServoL(null);
    // Deserialize message field [pose]
    data.pose = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_msgs/ServoL';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e96c568678b00bfe7f6fdf0c7b828a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[6] pose
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoL(null);
    if (msg.pose !== undefined) {
      resolved.pose = msg.pose;
    }
    else {
      resolved.pose = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = ServoL;
