;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::SetUserFrame)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'SetUserFrame (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::SETUSERFRAME")
  (make-package "ROBOT_MSGS::SETUSERFRAME"))
(unless (find-package "ROBOT_MSGS::SETUSERFRAMEREQUEST")
  (make-package "ROBOT_MSGS::SETUSERFRAMEREQUEST"))
(unless (find-package "ROBOT_MSGS::SETUSERFRAMERESPONSE")
  (make-package "ROBOT_MSGS::SETUSERFRAMERESPONSE"))

(in-package "ROS")





(defclass robot_msgs::SetUserFrameRequest
  :super ros::object
  :slots (_pose _user_num ))

(defmethod robot_msgs::SetUserFrameRequest
  (:init
   (&key
    ((:pose __pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:user_num __user_num) 0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _user_num (round __user_num))
   self)
  (:pose
   (&optional __pose)
   (if __pose (setq _pose __pose)) _pose)
  (:user_num
   (&optional __user_num)
   (if __user_num (setq _user_num __user_num)) _user_num)
  (:serialization-length
   ()
   (+
    ;; float32[] _pose
    (* 4    (length _pose)) 4
    ;; int16 _user_num
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _pose
     (write-long (length _pose) s)
     (dotimes (i (length _pose))
       (sys::poke (elt _pose i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int16 _user_num
       (write-word _user_num s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pose i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int16 _user_num
     (setq _user_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass robot_msgs::SetUserFrameResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod robot_msgs::SetUserFrameResponse
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

(defclass robot_msgs::SetUserFrame
  :super ros::object
  :slots ())

(setf (get robot_msgs::SetUserFrame :md5sum-) "f74c56afc671b9ccd78097ad9fa9b7ce")
(setf (get robot_msgs::SetUserFrame :datatype-) "robot_msgs/SetUserFrame")
(setf (get robot_msgs::SetUserFrame :request) robot_msgs::SetUserFrameRequest)
(setf (get robot_msgs::SetUserFrame :response) robot_msgs::SetUserFrameResponse)

(defmethod robot_msgs::SetUserFrameRequest
  (:response () (instance robot_msgs::SetUserFrameResponse :init)))

(setf (get robot_msgs::SetUserFrameRequest :md5sum-) "f74c56afc671b9ccd78097ad9fa9b7ce")
(setf (get robot_msgs::SetUserFrameRequest :datatype-) "robot_msgs/SetUserFrameRequest")
(setf (get robot_msgs::SetUserFrameRequest :definition-)
      "float32[] pose

# user_num: 0~7
int16 user_num

---

int16 ret
string message
")

(setf (get robot_msgs::SetUserFrameResponse :md5sum-) "f74c56afc671b9ccd78097ad9fa9b7ce")
(setf (get robot_msgs::SetUserFrameResponse :datatype-) "robot_msgs/SetUserFrameResponse")
(setf (get robot_msgs::SetUserFrameResponse :definition-)
      "float32[] pose

# user_num: 0~7
int16 user_num

---

int16 ret
string message
")



(provide :robot_msgs/SetUserFrame "f74c56afc671b9ccd78097ad9fa9b7ce")


