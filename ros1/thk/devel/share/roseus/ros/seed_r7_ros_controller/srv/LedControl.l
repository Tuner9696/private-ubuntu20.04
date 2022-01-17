;; Auto-generated. Do not edit!


(when (boundp 'seed_r7_ros_controller::LedControl)
  (if (not (find-package "SEED_R7_ROS_CONTROLLER"))
    (make-package "SEED_R7_ROS_CONTROLLER"))
  (shadow 'LedControl (find-package "SEED_R7_ROS_CONTROLLER")))
(unless (find-package "SEED_R7_ROS_CONTROLLER::LEDCONTROL")
  (make-package "SEED_R7_ROS_CONTROLLER::LEDCONTROL"))
(unless (find-package "SEED_R7_ROS_CONTROLLER::LEDCONTROLREQUEST")
  (make-package "SEED_R7_ROS_CONTROLLER::LEDCONTROLREQUEST"))
(unless (find-package "SEED_R7_ROS_CONTROLLER::LEDCONTROLRESPONSE")
  (make-package "SEED_R7_ROS_CONTROLLER::LEDCONTROLRESPONSE"))

(in-package "ROS")





(intern "*FRONT_RIGHT*" (find-package "SEED_R7_ROS_CONTROLLER::LEDCONTROLREQUEST"))
(shadow '*FRONT_RIGHT* (find-package "SEED_R7_ROS_CONTROLLER::LEDCONTROLREQUEST"))
(defconstant seed_r7_ros_controller::LedControlRequest::*FRONT_RIGHT* 3)
(intern "*REAR_RIGHT*" (find-package "SEED_R7_ROS_CONTROLLER::LEDCONTROLREQUEST"))
(shadow '*REAR_RIGHT* (find-package "SEED_R7_ROS_CONTROLLER::LEDCONTROLREQUEST"))
(defconstant seed_r7_ros_controller::LedControlRequest::*REAR_RIGHT* 4)
(intern "*FRONT_LEFT*" (find-package "SEED_R7_ROS_CONTROLLER::LEDCONTROLREQUEST"))
(shadow '*FRONT_LEFT* (find-package "SEED_R7_ROS_CONTROLLER::LEDCONTROLREQUEST"))
(defconstant seed_r7_ros_controller::LedControlRequest::*FRONT_LEFT* 5)
(intern "*REAR_LEFT*" (find-package "SEED_R7_ROS_CONTROLLER::LEDCONTROLREQUEST"))
(shadow '*REAR_LEFT* (find-package "SEED_R7_ROS_CONTROLLER::LEDCONTROLREQUEST"))
(defconstant seed_r7_ros_controller::LedControlRequest::*REAR_LEFT* 6)

(defun seed_r7_ros_controller::LedControlRequest-to-symbol (const)
  (cond
        ((= const 3) 'seed_r7_ros_controller::LedControlRequest::*FRONT_RIGHT*)
        ((= const 4) 'seed_r7_ros_controller::LedControlRequest::*REAR_RIGHT*)
        ((= const 5) 'seed_r7_ros_controller::LedControlRequest::*FRONT_LEFT*)
        ((= const 6) 'seed_r7_ros_controller::LedControlRequest::*REAR_LEFT*)
        (t nil)))

(defclass seed_r7_ros_controller::LedControlRequest
  :super ros::object
  :slots (_send_number _script_number ))

(defmethod seed_r7_ros_controller::LedControlRequest
  (:init
   (&key
    ((:send_number __send_number) 0)
    ((:script_number __script_number) 0)
    )
   (send-super :init)
   (setq _send_number (round __send_number))
   (setq _script_number (round __script_number))
   self)
  (:send_number
   (&optional __send_number)
   (if __send_number (setq _send_number __send_number)) _send_number)
  (:script_number
   (&optional __script_number)
   (if __script_number (setq _script_number __script_number)) _script_number)
  (:serialization-length
   ()
   (+
    ;; uint8 _send_number
    1
    ;; uint16 _script_number
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _send_number
       (write-byte _send_number s)
     ;; uint16 _script_number
       (write-word _script_number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _send_number
     (setq _send_number (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _script_number
     (setq _script_number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass seed_r7_ros_controller::LedControlResponse
  :super ros::object
  :slots (_result ))

(defmethod seed_r7_ros_controller::LedControlResponse
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

(defclass seed_r7_ros_controller::LedControl
  :super ros::object
  :slots ())

(setf (get seed_r7_ros_controller::LedControl :md5sum-) "f29b351f80354f5bbb09b425fecd0cc2")
(setf (get seed_r7_ros_controller::LedControl :datatype-) "seed_r7_ros_controller/LedControl")
(setf (get seed_r7_ros_controller::LedControl :request) seed_r7_ros_controller::LedControlRequest)
(setf (get seed_r7_ros_controller::LedControl :response) seed_r7_ros_controller::LedControlResponse)

(defmethod seed_r7_ros_controller::LedControlRequest
  (:response () (instance seed_r7_ros_controller::LedControlResponse :init)))

(setf (get seed_r7_ros_controller::LedControlRequest :md5sum-) "f29b351f80354f5bbb09b425fecd0cc2")
(setf (get seed_r7_ros_controller::LedControlRequest :datatype-) "seed_r7_ros_controller/LedControlRequest")
(setf (get seed_r7_ros_controller::LedControlRequest :definition-)
      "uint8 send_number
uint8 FRONT_RIGHT = 3
uint8 REAR_RIGHT = 4
uint8 FRONT_LEFT = 5
uint8 REAR_LEFT = 6

uint16 script_number 
---
string result
")

(setf (get seed_r7_ros_controller::LedControlResponse :md5sum-) "f29b351f80354f5bbb09b425fecd0cc2")
(setf (get seed_r7_ros_controller::LedControlResponse :datatype-) "seed_r7_ros_controller/LedControlResponse")
(setf (get seed_r7_ros_controller::LedControlResponse :definition-)
      "uint8 send_number
uint8 FRONT_RIGHT = 3
uint8 REAR_RIGHT = 4
uint8 FRONT_LEFT = 5
uint8 REAR_LEFT = 6

uint16 script_number 
---
string result
")



(provide :seed_r7_ros_controller/LedControl "f29b351f80354f5bbb09b425fecd0cc2")


