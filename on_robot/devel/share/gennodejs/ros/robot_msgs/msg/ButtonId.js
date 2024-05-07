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

class ButtonId {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.continue_button = null;
      this.halt_button = null;
      this.controller_mode_button = null;
    }
    else {
      if (initObj.hasOwnProperty('continue_button')) {
        this.continue_button = initObj.continue_button
      }
      else {
        this.continue_button = 0;
      }
      if (initObj.hasOwnProperty('halt_button')) {
        this.halt_button = initObj.halt_button
      }
      else {
        this.halt_button = 0;
      }
      if (initObj.hasOwnProperty('controller_mode_button')) {
        this.controller_mode_button = initObj.controller_mode_button
      }
      else {
        this.controller_mode_button = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonId
    // Serialize message field [continue_button]
    bufferOffset = _serializer.int32(obj.continue_button, buffer, bufferOffset);
    // Serialize message field [halt_button]
    bufferOffset = _serializer.int32(obj.halt_button, buffer, bufferOffset);
    // Serialize message field [controller_mode_button]
    bufferOffset = _serializer.int32(obj.controller_mode_button, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonId
    let len;
    let data = new ButtonId(null);
    // Deserialize message field [continue_button]
    data.continue_button = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [halt_button]
    data.halt_button = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [controller_mode_button]
    data.controller_mode_button = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_msgs/ButtonId';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '314a9db055f7b4a1c338114270c57aba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 continue_button
    int32 halt_button
    int32 controller_mode_button
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ButtonId(null);
    if (msg.continue_button !== undefined) {
      resolved.continue_button = msg.continue_button;
    }
    else {
      resolved.continue_button = 0
    }

    if (msg.halt_button !== undefined) {
      resolved.halt_button = msg.halt_button;
    }
    else {
      resolved.halt_button = 0
    }

    if (msg.controller_mode_button !== undefined) {
      resolved.controller_mode_button = msg.controller_mode_button;
    }
    else {
      resolved.controller_mode_button = 0
    }

    return resolved;
    }
};

module.exports = ButtonId;
