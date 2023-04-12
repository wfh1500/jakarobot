;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::SetAxis)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'SetAxis (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::SETAXIS")
  (make-package "ROBOT_MSGS::SETAXIS"))
(unless (find-package "ROBOT_MSGS::SETAXISREQUEST")
  (make-package "ROBOT_MSGS::SETAXISREQUEST"))
(unless (find-package "ROBOT_MSGS::SETAXISRESPONSE")
  (make-package "ROBOT_MSGS::SETAXISRESPONSE"))

(in-package "ROS")





(defclass robot_msgs::SetAxisRequest
  :super ros::object
  :slots (_id _data ))

(defmethod robot_msgs::SetAxisRequest
  (:init
   (&key
    ((:id __id) 0)
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _data (round __data))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int16 _id
    2
    ;; int16 _data
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _id
       (write-word _id s)
     ;; int16 _data
       (write-word _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _data
     (setq _data (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass robot_msgs::SetAxisResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod robot_msgs::SetAxisResponse
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

(defclass robot_msgs::SetAxis
  :super ros::object
  :slots ())

(setf (get robot_msgs::SetAxis :md5sum-) "ba6aa16ce6b93641ff59c1e27e5efa94")
(setf (get robot_msgs::SetAxis :datatype-) "robot_msgs/SetAxis")
(setf (get robot_msgs::SetAxis :request) robot_msgs::SetAxisRequest)
(setf (get robot_msgs::SetAxis :response) robot_msgs::SetAxisResponse)

(defmethod robot_msgs::SetAxisRequest
  (:response () (instance robot_msgs::SetAxisResponse :init)))

(setf (get robot_msgs::SetAxisRequest :md5sum-) "ba6aa16ce6b93641ff59c1e27e5efa94")
(setf (get robot_msgs::SetAxisRequest :datatype-) "robot_msgs/SetAxisRequest")
(setf (get robot_msgs::SetAxisRequest :definition-)
      "int16 id

int16 data

---
int16 ret
string message

")

(setf (get robot_msgs::SetAxisResponse :md5sum-) "ba6aa16ce6b93641ff59c1e27e5efa94")
(setf (get robot_msgs::SetAxisResponse :datatype-) "robot_msgs/SetAxisResponse")
(setf (get robot_msgs::SetAxisResponse :definition-)
      "int16 id

int16 data

---
int16 ret
string message

")



(provide :robot_msgs/SetAxis "ba6aa16ce6b93641ff59c1e27e5efa94")


