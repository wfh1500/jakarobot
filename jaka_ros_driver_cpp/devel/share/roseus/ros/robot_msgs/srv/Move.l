;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::Move)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'Move (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::MOVE")
  (make-package "ROBOT_MSGS::MOVE"))
(unless (find-package "ROBOT_MSGS::MOVEREQUEST")
  (make-package "ROBOT_MSGS::MOVEREQUEST"))
(unless (find-package "ROBOT_MSGS::MOVERESPONSE")
  (make-package "ROBOT_MSGS::MOVERESPONSE"))

(in-package "ROS")





(defclass robot_msgs::MoveRequest
  :super ros::object
  :slots (_pose _has_ref _ref_joint _mvvelo _mvacc _mvtime _mvradii _coord_mode _index ))

(defmethod robot_msgs::MoveRequest
  (:init
   (&key
    ((:pose __pose) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:has_ref __has_ref) nil)
    ((:ref_joint __ref_joint) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:mvvelo __mvvelo) 0.0)
    ((:mvacc __mvacc) 0.0)
    ((:mvtime __mvtime) 0.0)
    ((:mvradii __mvradii) 0.0)
    ((:coord_mode __coord_mode) 0)
    ((:index __index) 0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _has_ref __has_ref)
   (setq _ref_joint __ref_joint)
   (setq _mvvelo (float __mvvelo))
   (setq _mvacc (float __mvacc))
   (setq _mvtime (float __mvtime))
   (setq _mvradii (float __mvradii))
   (setq _coord_mode (round __coord_mode))
   (setq _index (round __index))
   self)
  (:pose
   (&optional __pose)
   (if __pose (setq _pose __pose)) _pose)
  (:has_ref
   (&optional __has_ref)
   (if __has_ref (setq _has_ref __has_ref)) _has_ref)
  (:ref_joint
   (&optional __ref_joint)
   (if __ref_joint (setq _ref_joint __ref_joint)) _ref_joint)
  (:mvvelo
   (&optional __mvvelo)
   (if __mvvelo (setq _mvvelo __mvvelo)) _mvvelo)
  (:mvacc
   (&optional __mvacc)
   (if __mvacc (setq _mvacc __mvacc)) _mvacc)
  (:mvtime
   (&optional __mvtime)
   (if __mvtime (setq _mvtime __mvtime)) _mvtime)
  (:mvradii
   (&optional __mvradii)
   (if __mvradii (setq _mvradii __mvradii)) _mvradii)
  (:coord_mode
   (&optional __coord_mode)
   (if __coord_mode (setq _coord_mode __coord_mode)) _coord_mode)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:serialization-length
   ()
   (+
    ;; float32[] _pose
    (* 4    (length _pose)) 4
    ;; bool _has_ref
    1
    ;; float32[] _ref_joint
    (* 4    (length _ref_joint)) 4
    ;; float32 _mvvelo
    4
    ;; float32 _mvacc
    4
    ;; float32 _mvtime
    4
    ;; float32 _mvradii
    4
    ;; int16 _coord_mode
    2
    ;; int16 _index
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
     ;; bool _has_ref
       (if _has_ref (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _ref_joint
     (write-long (length _ref_joint) s)
     (dotimes (i (length _ref_joint))
       (sys::poke (elt _ref_joint i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _mvvelo
       (sys::poke _mvvelo (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mvacc
       (sys::poke _mvacc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mvtime
       (sys::poke _mvtime (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mvradii
       (sys::poke _mvradii (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int16 _coord_mode
       (write-word _coord_mode s)
     ;; int16 _index
       (write-word _index s)
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
   ;; bool _has_ref
     (setq _has_ref (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[] _ref_joint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ref_joint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ref_joint i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _mvvelo
     (setq _mvvelo (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mvacc
     (setq _mvacc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mvtime
     (setq _mvtime (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mvradii
     (setq _mvradii (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int16 _coord_mode
     (setq _coord_mode (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _index
     (setq _index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass robot_msgs::MoveResponse
  :super ros::object
  :slots (_ret _message ))

(defmethod robot_msgs::MoveResponse
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

(defclass robot_msgs::Move
  :super ros::object
  :slots ())

(setf (get robot_msgs::Move :md5sum-) "bfcaec3e81ace5826d9d96166632c9d1")
(setf (get robot_msgs::Move :datatype-) "robot_msgs/Move")
(setf (get robot_msgs::Move :request) robot_msgs::MoveRequest)
(setf (get robot_msgs::Move :response) robot_msgs::MoveResponse)

(defmethod robot_msgs::MoveRequest
  (:response () (instance robot_msgs::MoveResponse :init)))

(setf (get robot_msgs::MoveRequest :md5sum-) "bfcaec3e81ace5826d9d96166632c9d1")
(setf (get robot_msgs::MoveRequest :datatype-) "robot_msgs/MoveRequest")
(setf (get robot_msgs::MoveRequest :definition-)
      "# request: command specification for motion executions.
# Units:
#	joint space/angles: radian, radian/s and radian/s^2.
#	Cartesian space: mm, mm/s, and mm/s^2.
#	time: sec

# pose： target coordinate. 
#	For Joint Space target，pose dimention is the number of joints. element as each target joint position.
#	For Cartesian target: pose dimention is 6 for (x, y, z, roll, pitch, yaw)
float32[] pose
#Is there a reference solution 
bool has_ref
#Send if there is, empty array if not 
float32[] ref_joint

# mvvelo: specified maximum velocity during execution. linear or angular velocity 
float32 mvvelo
# mvacc: specified maximum acceleration during execution. linear or angular acceleration.
float32 mvacc
# mvtime: currently do not have any special meaning, please just give it 0.
float32 mvtime
# mvradii: this is special for move_ineb service, meaning the blending radius between 2 straight path trajectories, 0 for no blend.
float32 mvradii
int16 coord_mode
int16 index
---

# response: 
#	ret is 0 for successful execution and others for errors or warnings occured
#	message is a string returned by function, indicating execution status.

int16 ret
string message

")

(setf (get robot_msgs::MoveResponse :md5sum-) "bfcaec3e81ace5826d9d96166632c9d1")
(setf (get robot_msgs::MoveResponse :datatype-) "robot_msgs/MoveResponse")
(setf (get robot_msgs::MoveResponse :definition-)
      "# request: command specification for motion executions.
# Units:
#	joint space/angles: radian, radian/s and radian/s^2.
#	Cartesian space: mm, mm/s, and mm/s^2.
#	time: sec

# pose： target coordinate. 
#	For Joint Space target，pose dimention is the number of joints. element as each target joint position.
#	For Cartesian target: pose dimention is 6 for (x, y, z, roll, pitch, yaw)
float32[] pose
#Is there a reference solution 
bool has_ref
#Send if there is, empty array if not 
float32[] ref_joint

# mvvelo: specified maximum velocity during execution. linear or angular velocity 
float32 mvvelo
# mvacc: specified maximum acceleration during execution. linear or angular acceleration.
float32 mvacc
# mvtime: currently do not have any special meaning, please just give it 0.
float32 mvtime
# mvradii: this is special for move_ineb service, meaning the blending radius between 2 straight path trajectories, 0 for no blend.
float32 mvradii
int16 coord_mode
int16 index
---

# response: 
#	ret is 0 for successful execution and others for errors or warnings occured
#	message is a string returned by function, indicating execution status.

int16 ret
string message

")



(provide :robot_msgs/Move "bfcaec3e81ace5826d9d96166632c9d1")


