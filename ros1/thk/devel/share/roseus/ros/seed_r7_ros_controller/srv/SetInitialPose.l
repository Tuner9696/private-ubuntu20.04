;; Auto-generated. Do not edit!


(when (boundp 'seed_r7_ros_controller::SetInitialPose)
  (if (not (find-package "SEED_R7_ROS_CONTROLLER"))
    (make-package "SEED_R7_ROS_CONTROLLER"))
  (shadow 'SetInitialPose (find-package "SEED_R7_ROS_CONTROLLER")))
(unless (find-package "SEED_R7_ROS_CONTROLLER::SETINITIALPOSE")
  (make-package "SEED_R7_ROS_CONTROLLER::SETINITIALPOSE"))
(unless (find-package "SEED_R7_ROS_CONTROLLER::SETINITIALPOSEREQUEST")
  (make-package "SEED_R7_ROS_CONTROLLER::SETINITIALPOSEREQUEST"))
(unless (find-package "SEED_R7_ROS_CONTROLLER::SETINITIALPOSERESPONSE")
  (make-package "SEED_R7_ROS_CONTROLLER::SETINITIALPOSERESPONSE"))

(in-package "ROS")





(defclass seed_r7_ros_controller::SetInitialPoseRequest
  :super ros::object
  :slots (_x _y _theta ))

(defmethod seed_r7_ros_controller::SetInitialPoseRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _theta
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass seed_r7_ros_controller::SetInitialPoseResponse
  :super ros::object
  :slots (_result ))

(defmethod seed_r7_ros_controller::SetInitialPoseResponse
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

(defclass seed_r7_ros_controller::SetInitialPose
  :super ros::object
  :slots ())

(setf (get seed_r7_ros_controller::SetInitialPose :md5sum-) "afcf37822d0374e399bbea551fc3f563")
(setf (get seed_r7_ros_controller::SetInitialPose :datatype-) "seed_r7_ros_controller/SetInitialPose")
(setf (get seed_r7_ros_controller::SetInitialPose :request) seed_r7_ros_controller::SetInitialPoseRequest)
(setf (get seed_r7_ros_controller::SetInitialPose :response) seed_r7_ros_controller::SetInitialPoseResponse)

(defmethod seed_r7_ros_controller::SetInitialPoseRequest
  (:response () (instance seed_r7_ros_controller::SetInitialPoseResponse :init)))

(setf (get seed_r7_ros_controller::SetInitialPoseRequest :md5sum-) "afcf37822d0374e399bbea551fc3f563")
(setf (get seed_r7_ros_controller::SetInitialPoseRequest :datatype-) "seed_r7_ros_controller/SetInitialPoseRequest")
(setf (get seed_r7_ros_controller::SetInitialPoseRequest :definition-)
      "float64 x
float64 y
float64 theta
---
string result
")

(setf (get seed_r7_ros_controller::SetInitialPoseResponse :md5sum-) "afcf37822d0374e399bbea551fc3f563")
(setf (get seed_r7_ros_controller::SetInitialPoseResponse :datatype-) "seed_r7_ros_controller/SetInitialPoseResponse")
(setf (get seed_r7_ros_controller::SetInitialPoseResponse :definition-)
      "float64 x
float64 y
float64 theta
---
string result
")



(provide :seed_r7_ros_controller/SetInitialPose "afcf37822d0374e399bbea551fc3f563")


