; Auto-generated. Do not edit!


(cl:in-package seed_r7_ros_controller-srv)


;//! \htmlinclude ResetRobotStatus-request.msg.html

(cl:defclass <ResetRobotStatus-request> (roslisp-msg-protocol:ros-message)
  ((reset
    :reader reset
    :initarg :reset
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ResetRobotStatus-request (<ResetRobotStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetRobotStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetRobotStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_r7_ros_controller-srv:<ResetRobotStatus-request> is deprecated: use seed_r7_ros_controller-srv:ResetRobotStatus-request instead.")))

(cl:ensure-generic-function 'reset-val :lambda-list '(m))
(cl:defmethod reset-val ((m <ResetRobotStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_r7_ros_controller-srv:reset-val is deprecated.  Use seed_r7_ros_controller-srv:reset instead.")
  (reset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetRobotStatus-request>) ostream)
  "Serializes a message object of type '<ResetRobotStatus-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetRobotStatus-request>) istream)
  "Deserializes a message object of type '<ResetRobotStatus-request>"
    (cl:setf (cl:slot-value msg 'reset) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetRobotStatus-request>)))
  "Returns string type for a service object of type '<ResetRobotStatus-request>"
  "seed_r7_ros_controller/ResetRobotStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetRobotStatus-request)))
  "Returns string type for a service object of type 'ResetRobotStatus-request"
  "seed_r7_ros_controller/ResetRobotStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetRobotStatus-request>)))
  "Returns md5sum for a message object of type '<ResetRobotStatus-request>"
  "6cdbff96eb47c9283a67a20f729609c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetRobotStatus-request)))
  "Returns md5sum for a message object of type 'ResetRobotStatus-request"
  "6cdbff96eb47c9283a67a20f729609c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetRobotStatus-request>)))
  "Returns full string definition for message of type '<ResetRobotStatus-request>"
  (cl:format cl:nil "bool reset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetRobotStatus-request)))
  "Returns full string definition for message of type 'ResetRobotStatus-request"
  (cl:format cl:nil "bool reset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetRobotStatus-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetRobotStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetRobotStatus-request
    (cl:cons ':reset (reset msg))
))
;//! \htmlinclude ResetRobotStatus-response.msg.html

(cl:defclass <ResetRobotStatus-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass ResetRobotStatus-response (<ResetRobotStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetRobotStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetRobotStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_r7_ros_controller-srv:<ResetRobotStatus-response> is deprecated: use seed_r7_ros_controller-srv:ResetRobotStatus-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ResetRobotStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_r7_ros_controller-srv:result-val is deprecated.  Use seed_r7_ros_controller-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetRobotStatus-response>) ostream)
  "Serializes a message object of type '<ResetRobotStatus-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetRobotStatus-response>) istream)
  "Deserializes a message object of type '<ResetRobotStatus-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetRobotStatus-response>)))
  "Returns string type for a service object of type '<ResetRobotStatus-response>"
  "seed_r7_ros_controller/ResetRobotStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetRobotStatus-response)))
  "Returns string type for a service object of type 'ResetRobotStatus-response"
  "seed_r7_ros_controller/ResetRobotStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetRobotStatus-response>)))
  "Returns md5sum for a message object of type '<ResetRobotStatus-response>"
  "6cdbff96eb47c9283a67a20f729609c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetRobotStatus-response)))
  "Returns md5sum for a message object of type 'ResetRobotStatus-response"
  "6cdbff96eb47c9283a67a20f729609c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetRobotStatus-response>)))
  "Returns full string definition for message of type '<ResetRobotStatus-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetRobotStatus-response)))
  "Returns full string definition for message of type 'ResetRobotStatus-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetRobotStatus-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetRobotStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetRobotStatus-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetRobotStatus)))
  'ResetRobotStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetRobotStatus)))
  'ResetRobotStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetRobotStatus)))
  "Returns string type for a service object of type '<ResetRobotStatus>"
  "seed_r7_ros_controller/ResetRobotStatus")