
(cl:in-package :asdf)

(defsystem "robot_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RobotMsg" :depends-on ("_package_RobotMsg"))
    (:file "_package_RobotMsg" :depends-on ("_package"))
    (:file "ServoL" :depends-on ("_package_ServoL"))
    (:file "_package_ServoL" :depends-on ("_package"))
  ))