; Auto-generated. Do not edit!


(cl:in-package robot_msgs-srv)


;//! \htmlinclude SetUserFrame-request.msg.html

(cl:defclass <SetUserFrame-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (user_num
    :reader user_num
    :initarg :user_num
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetUserFrame-request (<SetUserFrame-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUserFrame-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUserFrame-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<SetUserFrame-request> is deprecated: use robot_msgs-srv:SetUserFrame-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SetUserFrame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:pose-val is deprecated.  Use robot_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'user_num-val :lambda-list '(m))
(cl:defmethod user_num-val ((m <SetUserFrame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:user_num-val is deprecated.  Use robot_msgs-srv:user_num instead.")
  (user_num m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUserFrame-request>) ostream)
  "Serializes a message object of type '<SetUserFrame-request>"
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
  (cl:let* ((signed (cl:slot-value msg 'user_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUserFrame-request>) istream)
  "Deserializes a message object of type '<SetUserFrame-request>"
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
      (cl:setf (cl:slot-value msg 'user_num) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUserFrame-request>)))
  "Returns string type for a service object of type '<SetUserFrame-request>"
  "robot_msgs/SetUserFrameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUserFrame-request)))
  "Returns string type for a service object of type 'SetUserFrame-request"
  "robot_msgs/SetUserFrameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUserFrame-request>)))
  "Returns md5sum for a message object of type '<SetUserFrame-request>"
  "f74c56afc671b9ccd78097ad9fa9b7ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUserFrame-request)))
  "Returns md5sum for a message object of type 'SetUserFrame-request"
  "f74c56afc671b9ccd78097ad9fa9b7ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUserFrame-request>)))
  "Returns full string definition for message of type '<SetUserFrame-request>"
  (cl:format cl:nil "float32[] pose~%~%# user_num: 0~~7~%int16 user_num~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUserFrame-request)))
  "Returns full string definition for message of type 'SetUserFrame-request"
  (cl:format cl:nil "float32[] pose~%~%# user_num: 0~~7~%int16 user_num~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUserFrame-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUserFrame-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUserFrame-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':user_num (user_num msg))
))
;//! \htmlinclude SetUserFrame-response.msg.html

(cl:defclass <SetUserFrame-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetUserFrame-response (<SetUserFrame-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUserFrame-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUserFrame-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-srv:<SetUserFrame-response> is deprecated: use robot_msgs-srv:SetUserFrame-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <SetUserFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:ret-val is deprecated.  Use robot_msgs-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetUserFrame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-srv:message-val is deprecated.  Use robot_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUserFrame-response>) ostream)
  "Serializes a message object of type '<SetUserFrame-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUserFrame-response>) istream)
  "Deserializes a message object of type '<SetUserFrame-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUserFrame-response>)))
  "Returns string type for a service object of type '<SetUserFrame-response>"
  "robot_msgs/SetUserFrameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUserFrame-response)))
  "Returns string type for a service object of type 'SetUserFrame-response"
  "robot_msgs/SetUserFrameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUserFrame-response>)))
  "Returns md5sum for a message object of type '<SetUserFrame-response>"
  "f74c56afc671b9ccd78097ad9fa9b7ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUserFrame-response)))
  "Returns md5sum for a message object of type 'SetUserFrame-response"
  "f74c56afc671b9ccd78097ad9fa9b7ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUserFrame-response>)))
  "Returns full string definition for message of type '<SetUserFrame-response>"
  (cl:format cl:nil "~%int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUserFrame-response)))
  "Returns full string definition for message of type 'SetUserFrame-response"
  (cl:format cl:nil "~%int16 ret~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUserFrame-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUserFrame-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUserFrame-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetUserFrame)))
  'SetUserFrame-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetUserFrame)))
  'SetUserFrame-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUserFrame)))
  "Returns string type for a service object of type '<SetUserFrame>"
  "robot_msgs/SetUserFrame")