; Auto-generated. Do not edit!


(cl:in-package seed_r7_ros_controller-srv)


;//! \htmlinclude LedControl-request.msg.html

(cl:defclass <LedControl-request> (roslisp-msg-protocol:ros-message)
  ((send_number
    :reader send_number
    :initarg :send_number
    :type cl:fixnum
    :initform 0)
   (script_number
    :reader script_number
    :initarg :script_number
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LedControl-request (<LedControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_r7_ros_controller-srv:<LedControl-request> is deprecated: use seed_r7_ros_controller-srv:LedControl-request instead.")))

(cl:ensure-generic-function 'send_number-val :lambda-list '(m))
(cl:defmethod send_number-val ((m <LedControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_r7_ros_controller-srv:send_number-val is deprecated.  Use seed_r7_ros_controller-srv:send_number instead.")
  (send_number m))

(cl:ensure-generic-function 'script_number-val :lambda-list '(m))
(cl:defmethod script_number-val ((m <LedControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_r7_ros_controller-srv:script_number-val is deprecated.  Use seed_r7_ros_controller-srv:script_number instead.")
  (script_number m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LedControl-request>)))
    "Constants for message type '<LedControl-request>"
  '((:FRONT_RIGHT . 3)
    (:REAR_RIGHT . 4)
    (:FRONT_LEFT . 5)
    (:REAR_LEFT . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LedControl-request)))
    "Constants for message type 'LedControl-request"
  '((:FRONT_RIGHT . 3)
    (:REAR_RIGHT . 4)
    (:FRONT_LEFT . 5)
    (:REAR_LEFT . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedControl-request>) ostream)
  "Serializes a message object of type '<LedControl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'send_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'script_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'script_number)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedControl-request>) istream)
  "Deserializes a message object of type '<LedControl-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'send_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'script_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'script_number)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedControl-request>)))
  "Returns string type for a service object of type '<LedControl-request>"
  "seed_r7_ros_controller/LedControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedControl-request)))
  "Returns string type for a service object of type 'LedControl-request"
  "seed_r7_ros_controller/LedControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedControl-request>)))
  "Returns md5sum for a message object of type '<LedControl-request>"
  "f29b351f80354f5bbb09b425fecd0cc2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedControl-request)))
  "Returns md5sum for a message object of type 'LedControl-request"
  "f29b351f80354f5bbb09b425fecd0cc2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedControl-request>)))
  "Returns full string definition for message of type '<LedControl-request>"
  (cl:format cl:nil "uint8 send_number~%uint8 FRONT_RIGHT = 3~%uint8 REAR_RIGHT = 4~%uint8 FRONT_LEFT = 5~%uint8 REAR_LEFT = 6~%~%uint16 script_number ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedControl-request)))
  "Returns full string definition for message of type 'LedControl-request"
  (cl:format cl:nil "uint8 send_number~%uint8 FRONT_RIGHT = 3~%uint8 REAR_RIGHT = 4~%uint8 FRONT_LEFT = 5~%uint8 REAR_LEFT = 6~%~%uint16 script_number ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedControl-request>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LedControl-request
    (cl:cons ':send_number (send_number msg))
    (cl:cons ':script_number (script_number msg))
))
;//! \htmlinclude LedControl-response.msg.html

(cl:defclass <LedControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass LedControl-response (<LedControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name seed_r7_ros_controller-srv:<LedControl-response> is deprecated: use seed_r7_ros_controller-srv:LedControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <LedControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader seed_r7_ros_controller-srv:result-val is deprecated.  Use seed_r7_ros_controller-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedControl-response>) ostream)
  "Serializes a message object of type '<LedControl-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedControl-response>) istream)
  "Deserializes a message object of type '<LedControl-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedControl-response>)))
  "Returns string type for a service object of type '<LedControl-response>"
  "seed_r7_ros_controller/LedControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedControl-response)))
  "Returns string type for a service object of type 'LedControl-response"
  "seed_r7_ros_controller/LedControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedControl-response>)))
  "Returns md5sum for a message object of type '<LedControl-response>"
  "f29b351f80354f5bbb09b425fecd0cc2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedControl-response)))
  "Returns md5sum for a message object of type 'LedControl-response"
  "f29b351f80354f5bbb09b425fecd0cc2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedControl-response>)))
  "Returns full string definition for message of type '<LedControl-response>"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedControl-response)))
  "Returns full string definition for message of type 'LedControl-response"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedControl-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LedControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LedControl)))
  'LedControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LedControl)))
  'LedControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedControl)))
  "Returns string type for a service object of type '<LedControl>"
  "seed_r7_ros_controller/LedControl")