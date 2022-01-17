
(cl:in-package :asdf)

(defsystem "seed_r7_ros_controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "HandControl" :depends-on ("_package_HandControl"))
    (:file "_package_HandControl" :depends-on ("_package"))
    (:file "LedControl" :depends-on ("_package_LedControl"))
    (:file "_package_LedControl" :depends-on ("_package"))
    (:file "ResetRobotStatus" :depends-on ("_package_ResetRobotStatus"))
    (:file "_package_ResetRobotStatus" :depends-on ("_package"))
    (:file "SetInitialPose" :depends-on ("_package_SetInitialPose"))
    (:file "_package_SetInitialPose" :depends-on ("_package"))
  ))