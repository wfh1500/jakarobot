;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::ServoL)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'ServoL (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::SERVOL")
  (make-package "ROBOT_MSGS::SERVOL"))

(in-package "ROS")
;;//! \htmlinclude ServoL.msg.html


(defclass robot_msgs::ServoL
  :super ros::object
  :slots (_pose ))

(defmethod robot_msgs::ServoL
  (:init
   (&key
    ((:pose __pose) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&optional __pose)
   (if __pose (setq _pose __pose)) _pose)
  (:serialization-length
   ()
   (+
    ;; float32[6] _pose
    (* 4    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[6] _pose
     (dotimes (i 6)
       (sys::poke (elt _pose i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[6] _pose
   (dotimes (i (length _pose))
     (setf (elt _pose i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get robot_msgs::ServoL :md5sum-) "2e96c568678b00bfe7f6fdf0c7b828a4")
(setf (get robot_msgs::ServoL :datatype-) "robot_msgs/ServoL")
(setf (get robot_msgs::ServoL :definition-)
      "float32[6] pose

")



(provide :robot_msgs/ServoL "2e96c568678b00bfe7f6fdf0c7b828a4")


