; Auto-generated. Do not edit!


(cl:in-package robot_msgs-srv)


;//! \htmlinclude SetCollision-request.msg.html

(cl:defclass <SetCollision-request> (roslisp-msg-protocol:ros-message)
  ((is_enable
    :reader is_enable
    :initarg :is_enable
    :type cl:boolean
    :initform cl:nil)
   (value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetCollision-request (<SetCollision-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCollision-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCollision-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<SetCollision-request> is deprecated: use robot_msgs-srv:SetCollision-request instead.")))

(cl:ensure-generic-function 'is_enable-val :lambda-list '(m))
(cl:defmethod is_enable-val ((m <SetCollision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:is_enable-val is deprecated.  Use robot_msgs-srv:is_enable instead.")
  (is_enable m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SetCollision-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:value-val is deprecated.  Use robot_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCollision-request>) ostream)
  "Serializes a message object of type '<SetCollision-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_enable) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCollision-request>) istream)
  "Deserializes a message object of type '<SetCollision-request>"
    (cl:setf (cl:slot-value msg 'is_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCollision-request>)))
  "Returns string type for a service object of type '<SetCollision-request>"
  "robot_msgs/SetCollisionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCollision-request)))
  "Returns string type for a service object of type 'SetCollision-request"
  "robot_msgs/SetCollisionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCollision-request>)))
  "Returns md5sum for a message object of type '<SetCollision-request>"
  "192c4b02f65b62b6f0470ca351b4f7cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCollision-request)))
  "Returns md5sum for a message object of type 'SetCollision-request"
  "192c4b02f65b62b6f0470ca351b4f7cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCollision-request>)))
  "Returns full string definition for message of type '<SetCollision-request>"
  (cl:format cl:nil "bool is_enable~%~%int16 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCollision-request)))
  "Returns full string definition for message of type 'SetCollision-request"
  (cl:format cl:nil "bool is_enable~%~%int16 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCollision-request>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCollision-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCollision-request
    (cl:cons ':is_enable (is_enable msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude SetCollision-response.msg.html

(cl:defclass <SetCollision-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetCollision-response (<SetCollision-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCollision-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCollision-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<SetCollision-response> is deprecated: use robot_msgs-srv:SetCollision-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <SetCollision-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:ret-val is deprecated.  Use robot_msgs-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetCollision-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:message-val is deprecated.  Use robot_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCollision-response>) ostream)
  "Serializes a message object of type '<SetCollision-response>"
  (cl:let* ((signed (cl:slot-value msg 'ret)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCollision-response>) istream)
  "Deserializes a message object of type '<SetCollision-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ret) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCollision-response>)))
  "Returns string type for a service object of type '<SetCollision-response>"
  "robot_msgs/SetCollisionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCollision-response)))
  "Returns string type for a service object of type 'SetCollision-response"
  "robot_msgs/SetCollisionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCollision-response>)))
  "Returns md5sum for a message object of type '<SetCollision-response>"
  "192c4b02f65b62b6f0470ca351b4f7cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCollision-response)))
  "Returns md5sum for a message object of type 'SetCollision-response"
  "192c4b02f65b62b6f0470ca351b4f7cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCollision-response>)))
  "Returns full string definition for message of type '<SetCollision-response>"
  (cl:format cl:nil "int16 ret~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCollision-response)))
  "Returns full string definition for message of type 'SetCollision-response"
  (cl:format cl:nil "int16 ret~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCollision-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCollision-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCollision-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCollision)))
  'SetCollision-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCollision)))
  'SetCollision-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCollision)))
  "Returns string type for a service object of type '<SetCollision>"
  "robot_msgs/SetCollision")