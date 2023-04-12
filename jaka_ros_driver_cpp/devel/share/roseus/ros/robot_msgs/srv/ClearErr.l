;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::ClearErr)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'ClearErr (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::CLEARERR")
  (make-package "ROBOT_MSGS::CLEARERR"))
(unless (find-package "ROBOT_MSGS::CLEARERRREQUEST")
  (make-package "ROBOT_MSGS::CLEARERRREQUEST"))
(unless (find-package "ROBOT_MSGS::CLEARERRRESPONSE")
  (make-package "ROBOT_MSGS::CLEARERRRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::ClearErrRequest
  :super ros::object
  :slots ())

(defmethod robot_msgs::ClearErrRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robot_msgs::ClearErrResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod robot_msgs::ClearErrResponse
  (:init
   (&key
    ((:ret __ret) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _ret (round __ret))
   (setq _message (string __message))
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int16 _ret
    2
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _ret
       (write-word _ret s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _ret
     (setq _ret (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robot_msgs::ClearErr
  :super ros::object
  :slots ())

(setf (get robot_msgs::ClearErr :md5sum-) "76c68a2c5e109f4d6a4dc1cfc355f405")
(setf (get robot_msgs::ClearErr :datatype-) "robot_msgs/ClearErr")
(setf (get robot_msgs::ClearErr :request) robot_msgs::ClearErrRequest)
(setf (get robot_msgs::ClearErr :response) robot_msgs::ClearErrResponse)

(defmethod robot_msgs::ClearErrRequest
  (:response () (instance robot_msgs::ClearErrResponse :init)))

(setf (get robot_msgs::ClearErrRequest :md5sum-) "76c68a2c5e109f4d6a4dc1cfc355f405")
(setf (get robot_msgs::ClearErrRequest :datatype-) "robot_msgs/ClearErrRequest")
(setf (get robot_msgs::ClearErrRequest :definition-)
      "
---

int16 ret

string message
")

(setf (get robot_msgs::ClearErrResponse :md5sum-) "76c68a2c5e109f4d6a4dc1cfc355f405")
(setf (get robot_msgs::ClearErrResponse :datatype-) "robot_msgs/ClearErrResponse")
(setf (get robot_msgs::ClearErrResponse :definition-)
      "
---

int16 ret

string message
")



(provide :robot_msgs/ClearErr "76c68a2c5e109f4d6a4dc1cfc355f405")


