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

class ButtonStatus {
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
        this.continue_button = false;
      }
      if (initObj.hasOwnProperty('halt_button')) {
        this.halt_button = initObj.halt_button
      }
      else {
        this.halt_button = false;
      }
      if (initObj.hasOwnProperty('controller_mode_button')) {
        this.controller_mode_button = initObj.controller_mode_button
      }
      else {
        this.controller_mode_button = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonStatus
    // Serialize message field [continue_button]
    bufferOffset = _serializer.bool(obj.continue_button, buffer, bufferOffset);
    // Serialize message field [halt_button]
    bufferOffset = _serializer.bool(obj.halt_button, buffer, bufferOffset);
    // Serialize message field [controller_mode_button]
    bufferOffset = _serializer.bool(obj.controller_mode_button, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonStatus
    let len;
    let data = new ButtonStatus(null);
    // Deserialize message field [continue_button]
    data.continue_button = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [halt_button]
    data.halt_button = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [controller_mode_button]
    data.controller_mode_button = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_msgs/ButtonStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6604d0e7e58a8aeec7fe727e398df583';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool continue_button
    bool halt_button
    bool controller_mode_button
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ButtonStatus(null);
    if (msg.continue_button !== undefined) {
      resolved.continue_button = msg.continue_button;
    }
    else {
      resolved.continue_button = false
    }

    if (msg.halt_button !== undefined) {
      resolved.halt_button = msg.halt_button;
    }
    else {
      resolved.halt_button = false
    }

    if (msg.controller_mode_button !== undefined) {
      resolved.controller_mode_button = msg.controller_mode_button;
    }
    else {
      resolved.controller_mode_button = false
    }

    return resolved;
    }
};

module.exports = ButtonStatus;
