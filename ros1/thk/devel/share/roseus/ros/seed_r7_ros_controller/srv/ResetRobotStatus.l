;; Auto-generated. Do not edit!


(when (boundp 'seed_r7_ros_controller::ResetRobotStatus)
  (if (not (find-package "SEED_R7_ROS_CONTROLLER"))
    (make-package "SEED_R7_ROS_CONTROLLER"))
  (shadow 'ResetRobotStatus (find-package "SEED_R7_ROS_CONTROLLER")))
(unless (find-package "SEED_R7_ROS_CONTROLLER::RESETROBOTSTATUS")
  (make-package "SEED_R7_ROS_CONTROLLER::RESETROBOTSTATUS"))
(unless (find-package "SEED_R7_ROS_CONTROLLER::RESETROBOTSTATUSREQUEST")
  (make-package "SEED_R7_ROS_CONTROLLER::RESETROBOTSTATUSREQUEST"))
(unless (find-package "SEED_R7_ROS_CONTROLLER::RESETROBOTSTATUSRESPONSE")
  (make-package "SEED_R7_ROS_CONTROLLER::RESETROBOTSTATUSRESPONSE"))

(in-package "ROS")





(defclass seed_r7_ros_controller::ResetRobotStatusRequest
  :super ros::object
  :slots (_reset ))

(defmethod seed_r7_ros_controller::ResetRobotStatusRequest
  (:init
   (&key
    ((:reset __reset) nil)
    )
   (send-super :init)
   (setq _reset __reset)
   self)
  (:reset
   (&optional (__reset :null))
   (if (not (eq __reset :null)) (setq _reset __reset)) _reset)
  (:serialization-length
   ()
   (+
    ;; bool _reset
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _reset
       (if _reset (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _reset
     (setq _reset (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass seed_r7_ros_controller::ResetRobotStatusResponse
  :super ros::object
  :slots (_result ))

(defmethod seed_r7_ros_controller::ResetRobotStatusResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass seed_r7_ros_controller::ResetRobotStatus
  :super ros::object
  :slots ())

(setf (get seed_r7_ros_controller::ResetRobotStatus :md5sum-) "6cdbff96eb47c9283a67a20f729609c5")
(setf (get seed_r7_ros_controller::ResetRobotStatus :datatype-) "seed_r7_ros_controller/ResetRobotStatus")
(setf (get seed_r7_ros_controller::ResetRobotStatus :request) seed_r7_ros_controller::ResetRobotStatusRequest)
(setf (get seed_r7_ros_controller::ResetRobotStatus :response) seed_r7_ros_controller::ResetRobotStatusResponse)

(defmethod seed_r7_ros_controller::ResetRobotStatusRequest
  (:response () (instance seed_r7_ros_controller::ResetRobotStatusResponse :init)))

(setf (get seed_r7_ros_controller::ResetRobotStatusRequest :md5sum-) "6cdbff96eb47c9283a67a20f729609c5")
(setf (get seed_r7_ros_controller::ResetRobotStatusRequest :datatype-) "seed_r7_ros_controller/ResetRobotStatusRequest")
(setf (get seed_r7_ros_controller::ResetRobotStatusRequest :definition-)
      "bool reset
---
string result

")

(setf (get seed_r7_ros_controller::ResetRobotStatusResponse :md5sum-) "6cdbff96eb47c9283a67a20f729609c5")
(setf (get seed_r7_ros_controller::ResetRobotStatusResponse :datatype-) "seed_r7_ros_controller/ResetRobotStatusResponse")
(setf (get seed_r7_ros_controller::ResetRobotStatusResponse :definition-)
      "bool reset
---
string result

")



(provide :seed_r7_ros_controller/ResetRobotStatus "6cdbff96eb47c9283a67a20f729609c5")


