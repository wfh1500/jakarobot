; Auto-generated. Do not edit!


(cl:in-package robot_msgs-msg)


;//! \htmlinclude RobotMsg.msg.html

(cl:defclass <RobotMsg> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (motor_sync
    :reader motor_sync
    :initarg :motor_sync
    :type cl:fixnum
    :initform 0)
   (servo_enable
    :reader servo_enable
    :initarg :servo_enable
    :type cl:fixnum
    :initform 0)
   (collision_state
    :reader collision_state
    :initarg :collision_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RobotMsg (<RobotMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_msgs-msg:<RobotMsg> is deprecated: use robot_msgs-msg:RobotMsg instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:state-val is deprecated.  Use robot_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:mode-val is deprecated.  Use robot_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'motor_sync-val :lambda-list '(m))
(cl:defmethod motor_sync-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:motor_sync-val is deprecated.  Use robot_msgs-msg:motor_sync instead.")
  (motor_sync m))

(cl:ensure-generic-function 'servo_enable-val :lambda-list '(m))
(cl:defmethod servo_enable-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:servo_enable-val is deprecated.  Use robot_msgs-msg:servo_enable instead.")
  (servo_enable m))

(cl:ensure-generic-function 'collision_state-val :lambda-list '(m))
(cl:defmethod collision_state-val ((m <RobotMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_msgs-msg:collision_state-val is deprecated.  Use robot_msgs-msg:collision_state instead.")
  (collision_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotMsg>) ostream)
  "Serializes a message object of type '<RobotMsg>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'motor_sync)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'servo_enable)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'collision_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotMsg>) istream)
  "Deserializes a message object of type '<RobotMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_sync) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'servo_enable) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'collision_state) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotMsg>)))
  "Returns string type for a message object of type '<RobotMsg>"
  "robot_msgs/RobotMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotMsg)))
  "Returns string type for a message object of type 'RobotMsg"
  "robot_msgs/RobotMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotMsg>)))
  "Returns md5sum for a message object of type '<RobotMsg>"
  "3b2630c1c3ccdfb3994552115f3f96c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotMsg)))
  "Returns md5sum for a message object of type 'RobotMsg"
  "3b2630c1c3ccdfb3994552115f3f96c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotMsg>)))
  "Returns full string definition for message of type '<RobotMsg>"
  (cl:format cl:nil "# feedback information of the controlled robot~%~%# state of robot: ~%#   0 – STOPPED, not in execution, but ready to move.~%#	1 – PAUSED, paused in the middle of unfinished motion~%#	2 – EmeStop, not ready for any motion commands.~%#	3 – RUNNING, executing motion command. ~%#	4 – Error, not ready for any motion commands.~%int16 state~%~%# mode of robot:~%#	0 for TEACH mode~%#	1 for PLAY mode~%#	2 for REMOTE mode~%int16 mode~%~%# motor_sync: get motor synchronization, 1 for motor sync, 0 for motor async~%int16 motor_sync~%~%# servo_enable: get servo status, 1 for servo control enabled, 0 for servo disabled~%int16 servo_enable~%~%~%int16 collision_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotMsg)))
  "Returns full string definition for message of type 'RobotMsg"
  (cl:format cl:nil "# feedback information of the controlled robot~%~%# state of robot: ~%#   0 – STOPPED, not in execution, but ready to move.~%#	1 – PAUSED, paused in the middle of unfinished motion~%#	2 – EmeStop, not ready for any motion commands.~%#	3 – RUNNING, executing motion command. ~%#	4 – Error, not ready for any motion commands.~%int16 state~%~%# mode of robot:~%#	0 for TEACH mode~%#	1 for PLAY mode~%#	2 for REMOTE mode~%int16 mode~%~%# motor_sync: get motor synchronization, 1 for motor sync, 0 for motor async~%int16 motor_sync~%~%# servo_enable: get servo status, 1 for servo control enabled, 0 for servo disabled~%int16 servo_enable~%~%~%int16 collision_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotMsg>))
  (cl:+ 0
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotMsg
    (cl:cons ':state (state msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':motor_sync (motor_sync msg))
    (cl:cons ':servo_enable (servo_enable msg))
    (cl:cons ':collision_state (collision_state msg))
))
