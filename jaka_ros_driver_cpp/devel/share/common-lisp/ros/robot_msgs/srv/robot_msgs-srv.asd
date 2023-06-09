
(cl:in-package :asdf)

(defsystem "robot_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ClearErr" :depends-on ("_package_ClearErr"))
    (:file "_package_ClearErr" :depends-on ("_package"))
    (:file "Move" :depends-on ("_package_Move"))
    (:file "_package_Move" :depends-on ("_package"))
    (:file "SetAxis" :depends-on ("_package_SetAxis"))
    (:file "_package_SetAxis" :depends-on ("_package"))
    (:file "SetCollision" :depends-on ("_package_SetCollision"))
    (:file "_package_SetCollision" :depends-on ("_package"))
    (:file "SetLoad" :depends-on ("_package_SetLoad"))
    (:file "_package_SetLoad" :depends-on ("_package"))
    (:file "SetTcp" :depends-on ("_package_SetTcp"))
    (:file "_package_SetTcp" :depends-on ("_package"))
    (:file "SetUserFrame" :depends-on ("_package_SetUserFrame"))
    (:file "_package_SetUserFrame" :depends-on ("_package"))
  ))