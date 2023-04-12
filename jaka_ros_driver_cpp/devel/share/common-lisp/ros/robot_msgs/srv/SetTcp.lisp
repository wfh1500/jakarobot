; Auto-generated. Do not edit!


(cl:in-package robot_msgs-srv)


;//! \htmlinclude SetTcp-request.msg.html

(cl:defclass <SetTcp-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (tool_num
    :reader tool_num
    :initarg :tool_num
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetTcp-request (<SetTcp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTcp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTcp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<SetTcp-request> is deprecated: use robot_msgs-srv:SetTcp-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SetTcp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:pose-val is deprecated.  Use robot_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'tool_num-val :lambda-list '(m))
(cl:defmethod tool_num-val ((m <SetTcp-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:tool_num-val is deprecated.  Use robot_msgs-srv:tool_num instead.")
  (tool_num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTcp-request>) ostream)
  "Serializes a message object of type '<SetTcp-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pose))
  (cl:let* ((signed (cl:slot-value msg 'tool_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTcp-request>) istream)
  "Deserializes a message object of type '<SetTcp-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tool_num) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTcp-request>)))
  "Returns string type for a service object of type '<SetTcp-request>"
  "robot_msgs/SetTcpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTcp-request)))
  "Returns string type for a service object of type 'SetTcp-request"
  "robot_msgs/SetTcpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTcp-request>)))
  "Returns md5sum for a message object of type '<SetTcp-request>"
  "3d15cf469e59f026a4e4b350932a8496")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTcp-request)))
  "Returns md5sum for a message object of type 'SetTcp-request"
  "3d15cf469e59f026a4e4b350932a8496")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTcp-request>)))
  "Returns full string definition for message of type '<SetTcp-request>"
  (cl:format cl:nil "float32[] pose~%~%# tool_num: 0~~7~%int16 tool_num~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTcp-request)))
  "Returns full string definition for message of type 'SetTcp-request"
  (cl:format cl:nil "float32[] pose~%~%# tool_num: 0~~7~%int16 tool_num~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTcp-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTcp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTcp-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':tool_num (tool_num msg))
))
;//! \htmlinclude SetTcp-response.msg.html

(cl:defclass <SetTcp-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetTcp-response (<SetTcp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTcp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTcp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<SetTcp-response> is deprecated: use robot_msgs-srv:SetTcp-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <SetTcp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:ret-val is deprecated.  Use robot_msgs-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetTcp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:message-val is deprecated.  Use robot_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTcp-response>) ostream)
  "Serializes a message object of type '<SetTcp-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTcp-response>) istream)
  "Deserializes a message object of type '<SetTcp-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTcp-response>)))
  "Returns string type for a service object of type '<SetTcp-response>"
  "robot_msgs/SetTcpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTcp-response)))
  "Returns string type for a service object of type 'SetTcp-response"
  "robot_msgs/SetTcpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTcp-response>)))
  "Returns md5sum for a message object of type '<SetTcp-response>"
  "3d15cf469e59f026a4e4b350932a8496")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTcp-response)))
  "Returns md5sum for a message object of type 'SetTcp-response"
  "3d15cf469e59f026a4e4b350932a8496")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTcp-response>)))
  "Returns full string definition for message of type '<SetTcp-response>"
  (cl:format cl:nil "~%int16 ret~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTcp-response)))
  "Returns full string definition for message of type 'SetTcp-response"
  (cl:format cl:nil "~%int16 ret~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTcp-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTcp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTcp-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTcp)))
  'SetTcp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTcp)))
  'SetTcp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTcp)))
  "Returns string type for a service object of type '<SetTcp>"
  "robot_msgs/SetTcp")