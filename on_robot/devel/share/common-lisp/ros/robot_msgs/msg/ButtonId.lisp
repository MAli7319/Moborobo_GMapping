; Auto-generated. Do not edit!


(cl:in-package robot_msgs-msg)


;//! \htmlinclude ButtonId.msg.html

(cl:defclass <ButtonId> (roslisp-msg-protocol:ros-message)
  ((continue_button
    :reader continue_button
    :initarg :continue_button
    :type cl:integer
    :initform 0)
   (halt_button
    :reader halt_button
    :initarg :halt_button
    :type cl:integer
    :initform 0)
   (controller_mode_button
    :reader controller_mode_button
    :initarg :controller_mode_button
    :type cl:integer
    :initform 0))
)

(cl:defclass ButtonId (<ButtonId>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ButtonId>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ButtonId)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-msg:<ButtonId> is deprecated: use robot_msgs-msg:ButtonId instead.")))

(cl:ensure-generic-function 'continue_button-val :lambda-list '(m))
(cl:defmethod continue_button-val ((m <ButtonId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:continue_button-val is deprecated.  Use robot_msgs-msg:continue_button instead.")
  (continue_button m))

(cl:ensure-generic-function 'halt_button-val :lambda-list '(m))
(cl:defmethod halt_button-val ((m <ButtonId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:halt_button-val is deprecated.  Use robot_msgs-msg:halt_button instead.")
  (halt_button m))

(cl:ensure-generic-function 'controller_mode_button-val :lambda-list '(m))
(cl:defmethod controller_mode_button-val ((m <ButtonId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:controller_mode_button-val is deprecated.  Use robot_msgs-msg:controller_mode_button instead.")
  (controller_mode_button m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ButtonId>) ostream)
  "Serializes a message object of type '<ButtonId>"
  (cl:let* ((signed (cl:slot-value msg 'continue_button)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'halt_button)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'controller_mode_button)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ButtonId>) istream)
  "Deserializes a message object of type '<ButtonId>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'continue_button) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'halt_button) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'controller_mode_button) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ButtonId>)))
  "Returns string type for a message object of type '<ButtonId>"
  "robot_msgs/ButtonId")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ButtonId)))
  "Returns string type for a message object of type 'ButtonId"
  "robot_msgs/ButtonId")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ButtonId>)))
  "Returns md5sum for a message object of type '<ButtonId>"
  "314a9db055f7b4a1c338114270c57aba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ButtonId)))
  "Returns md5sum for a message object of type 'ButtonId"
  "314a9db055f7b4a1c338114270c57aba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ButtonId>)))
  "Returns full string definition for message of type '<ButtonId>"
  (cl:format cl:nil "int32 continue_button~%int32 halt_button~%int32 controller_mode_button~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ButtonId)))
  "Returns full string definition for message of type 'ButtonId"
  (cl:format cl:nil "int32 continue_button~%int32 halt_button~%int32 controller_mode_button~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ButtonId>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ButtonId>))
  "Converts a ROS message object to a list"
  (cl:list 'ButtonId
    (cl:cons ':continue_button (continue_button msg))
    (cl:cons ':halt_button (halt_button msg))
    (cl:cons ':controller_mode_button (controller_mode_button msg))
))
