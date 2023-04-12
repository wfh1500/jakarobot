; Auto-generated. Do not edit!


(cl:in-package robot_msgs-msg)


;//! \htmlinclude ServoL.msg.html

(cl:defclass <ServoL> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ServoL (<ServoL>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoL>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoL)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-msg:<ServoL> is deprecated: use robot_msgs-msg:ServoL instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ServoL>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:pose-val is deprecated.  Use robot_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoL>) ostream)
  "Serializes a message object of type '<ServoL>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoL>) istream)
  "Deserializes a message object of type '<ServoL>"
  (cl:setf (cl:slot-value msg 'pose) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'pose)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoL>)))
  "Returns string type for a message object of type '<ServoL>"
  "robot_msgs/ServoL")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoL)))
  "Returns string type for a message object of type 'ServoL"
  "robot_msgs/ServoL")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoL>)))
  "Returns md5sum for a message object of type '<ServoL>"
  "2e96c568678b00bfe7f6fdf0c7b828a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoL)))
  "Returns md5sum for a message object of type 'ServoL"
  "2e96c568678b00bfe7f6fdf0c7b828a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoL>)))
  "Returns full string definition for message of type '<ServoL>"
  (cl:format cl:nil "float32[6] pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoL)))
  "Returns full string definition for message of type 'ServoL"
  (cl:format cl:nil "float32[6] pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoL>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoL>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoL
    (cl:cons ':pose (pose msg))
))
