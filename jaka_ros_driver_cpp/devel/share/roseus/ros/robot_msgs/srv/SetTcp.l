;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::SetTcp)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'SetTcp (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::SETTCP")
  (make-package "ROBOT_MSGS::SETTCP"))
(unless (find-package "ROBOT_MSGS::SETTCPREQUEST")
  (make-package "ROBOT_MSGS::SETTCPREQUEST"))
(unless (find-package "ROBOT_MSGS::SETTCPRESPONSE")
  (make-package "ROBOT_MSGS::SETTCPRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::SetTcpRequest
  :super ros::object
  :slots (_pose _tool_num ))

(defmethod robot_msgs::SetTcpRequest
  (:init
   (&key
    ((:pose __pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:tool_num __tool_num) 0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _tool_num (round __tool_num))
   self)
  (:pose
   (&optional __pose)
   (if __pose (setq _pose __pose)) _pose)
  (:tool_num
   (&optional __tool_num)
   (if __tool_num (setq _tool_num __tool_num)) _tool_num)
  (:serialization-length
   ()
   (+
    ;; float32[] _pose
    (* 4    (length _pose)) 4
    ;; int16 _tool_num
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
     ;; int16 _tool_num
       (write-word _tool_num s)
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
   ;; int16 _tool_num
     (setq _tool_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass robot_msgs::SetTcpResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod robot_msgs::SetTcpResponse
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

(defclass robot_msgs::SetTcp
  :super ros::object
  :slots ())

(setf (get robot_msgs::SetTcp :md5sum-) "3d15cf469e59f026a4e4b350932a8496")
(setf (get robot_msgs::SetTcp :datatype-) "robot_msgs/SetTcp")
(setf (get robot_msgs::SetTcp :request) robot_msgs::SetTcpRequest)
(setf (get robot_msgs::SetTcp :response) robot_msgs::SetTcpResponse)

(defmethod robot_msgs::SetTcpRequest
  (:response () (instance robot_msgs::SetTcpResponse :init)))

(setf (get robot_msgs::SetTcpRequest :md5sum-) "3d15cf469e59f026a4e4b350932a8496")
(setf (get robot_msgs::SetTcpRequest :datatype-) "robot_msgs/SetTcpRequest")
(setf (get robot_msgs::SetTcpRequest :definition-)
      "float32[] pose

# tool_num: 0~7
int16 tool_num

---

int16 ret
string message

")

(setf (get robot_msgs::SetTcpResponse :md5sum-) "3d15cf469e59f026a4e4b350932a8496")
(setf (get robot_msgs::SetTcpResponse :datatype-) "robot_msgs/SetTcpResponse")
(setf (get robot_msgs::SetTcpResponse :definition-)
      "float32[] pose

# tool_num: 0~7
int16 tool_num

---

int16 ret
string message

")



(provide :robot_msgs/SetTcp "3d15cf469e59f026a4e4b350932a8496")


