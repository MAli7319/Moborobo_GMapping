; Auto-generated. Do not edit!


(cl:in-package robot_msgs-msg)


;//! \htmlinclude ButtonStatus.msg.html

(cl:defclass <ButtonStatus> (roslisp-msg-protocol:ros-message)
  ((continue_button
    :reader continue_button
    :initarg :continue_button
    :type cl:boolean
    :initform cl:nil)
   (halt_button
    :reader halt_button
    :initarg :halt_button
    :type cl:boolean
    :initform cl:nil)
   (controller_mode_button
    :reader controller_mode_button
    :initarg :controller_mode_button
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ButtonStatus (<ButtonStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-msg:<ButtonStatus> is deprecated: use robot_msgs-msg:ButtonStatus instead.")))

(cl:ensure-generic-function 'continue_button-val :lambda-list '(m))
(cl:defmethod continue_button-val ((m <ButtonStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:continue_button-val is deprecated.  Use robot_msgs-msg:continue_button instead.")
  (continue_button m))

(cl:ensure-generic-function 'halt_button-val :lambda-list '(m))
(cl:defmethod halt_button-val ((m <ButtonStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:halt_button-val is deprecated.  Use robot_msgs-msg:halt_button instead.")
  (halt_button m))

(cl:ensure-generic-function 'controller_mode_button-val :lambda-list '(m))
(cl:defmethod controller_mode_button-val ((m <ButtonStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:controller_mode_button-val is deprecated.  Use robot_msgs-msg:controller_mode_button instead.")
  (controller_mode_button m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonStatus>) ostream)
  "Serializes a message object of type '<ButtonStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'continue_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'halt_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'controller_mode_button) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonStatus>) istream)
  "Deserializes a message object of type '<ButtonStatus>"
    (cl:setf (cl:slot-value msg 'continue_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'halt_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'controller_mode_button) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonStatus>)))
  "Returns string type for a message object of type '<ButtonStatus>"
  "robot_msgs/ButtonStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonStatus)))
  "Returns string type for a message object of type 'ButtonStatus"
  "robot_msgs/ButtonStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonStatus>)))
  "Returns md5sum for a message object of type '<ButtonStatus>"
  "6604d0e7e58a8aeec7fe727e398df583")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonStatus)))
  "Returns md5sum for a message object of type 'ButtonStatus"
  "6604d0e7e58a8aeec7fe727e398df583")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonStatus>)))
  "Returns full string definition for message of type '<ButtonStatus>"
  (cl:format cl:nil "bool continue_button~%bool halt_button~%bool controller_mode_button~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonStatus)))
  "Returns full string definition for message of type 'ButtonStatus"
  (cl:format cl:nil "bool continue_button~%bool halt_button~%bool controller_mode_button~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonStatus>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonStatus
    (cl:cons ':continue_button (continue_button msg))
    (cl:cons ':halt_button (halt_button msg))
    (cl:cons ':controller_mode_button (controller_mode_button msg))
))
