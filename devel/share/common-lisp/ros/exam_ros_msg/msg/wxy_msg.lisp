; Auto-generated. Do not edit!


(cl:in-package exam_ros_msg-msg)


;//! \htmlinclude wxy_msg.msg.html

(cl:defclass <wxy_msg> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0)
   (z
    :reader z
    :initarg :z
    :type cl:integer
    :initform 0)
   (test
    :reader test
    :initarg :test
    :type cl:float
    :initform 0.0))
)

(cl:defclass wxy_msg (<wxy_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <wxy_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'wxy_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name exam_ros_msg-msg:<wxy_msg> is deprecated: use exam_ros_msg-msg:wxy_msg instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <wxy_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exam_ros_msg-msg:x-val is deprecated.  Use exam_ros_msg-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <wxy_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exam_ros_msg-msg:y-val is deprecated.  Use exam_ros_msg-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <wxy_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exam_ros_msg-msg:z-val is deprecated.  Use exam_ros_msg-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'test-val :lambda-list '(m))
(cl:defmethod test-val ((m <wxy_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader exam_ros_msg-msg:test-val is deprecated.  Use exam_ros_msg-msg:test instead.")
  (test m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <wxy_msg>) ostream)
  "Serializes a message object of type '<wxy_msg>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'test))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <wxy_msg>) istream)
  "Deserializes a message object of type '<wxy_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'z) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'test) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<wxy_msg>)))
  "Returns string type for a message object of type '<wxy_msg>"
  "exam_ros_msg/wxy_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'wxy_msg)))
  "Returns string type for a message object of type 'wxy_msg"
  "exam_ros_msg/wxy_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<wxy_msg>)))
  "Returns md5sum for a message object of type '<wxy_msg>"
  "f139c3f78860af338da979db6c5e8601")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'wxy_msg)))
  "Returns md5sum for a message object of type 'wxy_msg"
  "f139c3f78860af338da979db6c5e8601")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<wxy_msg>)))
  "Returns full string definition for message of type '<wxy_msg>"
  (cl:format cl:nil "int32 x~%int32 y~%int32 z~%float64 test~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'wxy_msg)))
  "Returns full string definition for message of type 'wxy_msg"
  (cl:format cl:nil "int32 x~%int32 y~%int32 z~%float64 test~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <wxy_msg>))
  (cl:+ 0
     4
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <wxy_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'wxy_msg
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':test (test msg))
))
