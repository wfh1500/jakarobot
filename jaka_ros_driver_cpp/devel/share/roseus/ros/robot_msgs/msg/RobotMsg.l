;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::RobotMsg)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'RobotMsg (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::ROBOTMSG")
  (make-package "ROBOT_MSGS::ROBOTMSG"))

(in-package "ROS")
;;//! \htmlinclude RobotMsg.msg.html


(defclass robot_msgs::RobotMsg
  :super ros::object
  :slots (_state _mode _motor_sync _servo_enable _collision_state ))

(defmethod robot_msgs::RobotMsg
  (:init
   (&key
    ((:state __state) 0)
    ((:mode __mode) 0)
    ((:motor_sync __motor_sync) 0)
    ((:servo_enable __servo_enable) 0)
    ((:collision_state __collision_state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _mode (round __mode))
   (setq _motor_sync (round __motor_sync))
   (setq _servo_enable (round __servo_enable))
   (setq _collision_state (round __collision_state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:motor_sync
   (&optional __motor_sync)
   (if __motor_sync (setq _motor_sync __motor_sync)) _motor_sync)
  (:servo_enable
   (&optional __servo_enable)
   (if __servo_enable (setq _servo_enable __servo_enable)) _servo_enable)
  (:collision_state
   (&optional __collision_state)
   (if __collision_state (setq _collision_state __collision_state)) _collision_state)
  (:serialization-length
   ()
   (+
    ;; int16 _state
    2
    ;; int16 _mode
    2
    ;; int16 _motor_sync
    2
    ;; int16 _servo_enable
    2
    ;; int16 _collision_state
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _state
       (write-word _state s)
     ;; int16 _mode
       (write-word _mode s)
     ;; int16 _motor_sync
       (write-word _motor_sync s)
     ;; int16 _servo_enable
       (write-word _servo_enable s)
     ;; int16 _collision_state
       (write-word _collision_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _state
     (setq _state (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _mode
     (setq _mode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _motor_sync
     (setq _motor_sync (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _servo_enable
     (setq _servo_enable (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _collision_state
     (setq _collision_state (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get robot_msgs::RobotMsg :md5sum-) "3b2630c1c3ccdfb3994552115f3f96c9")
(setf (get robot_msgs::RobotMsg :datatype-) "robot_msgs/RobotMsg")
(setf (get robot_msgs::RobotMsg :definition-)
      "# feedback information of the controlled robot

# state of robot: 
#   0 – STOPPED, not in execution, but ready to move.
#	1 – PAUSED, paused in the middle of unfinished motion
#	2 – EmeStop, not ready for any motion commands.
#	3 – RUNNING, executing motion command. 
#	4 – Error, not ready for any motion commands.
int16 state

# mode of robot:
#	0 for TEACH mode
#	1 for PLAY mode
#	2 for REMOTE mode
int16 mode

# motor_sync: get motor synchronization, 1 for motor sync, 0 for motor async
int16 motor_sync

# servo_enable: get servo status, 1 for servo control enabled, 0 for servo disabled
int16 servo_enable


int16 collision_state

")



(provide :robot_msgs/RobotMsg "3b2630c1c3ccdfb3994552115f3f96c9")


