;; Auto-generated. Do not edit!


(when (boundp 'exam_ros_msg::wxy_msg)
  (if (not (find-package "EXAM_ROS_MSG"))
    (make-package "EXAM_ROS_MSG"))
  (shadow 'wxy_msg (find-package "EXAM_ROS_MSG")))
(unless (find-package "EXAM_ROS_MSG::WXY_MSG")
  (make-package "EXAM_ROS_MSG::WXY_MSG"))

(in-package "ROS")
;;//! \htmlinclude wxy_msg.msg.html


(defclass exam_ros_msg::wxy_msg
  :super ros::object
  :slots (_x _y _z _test ))

(defmethod exam_ros_msg::wxy_msg
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0)
    ((:test __test) 0.0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (round __z))
   (setq _test (float __test))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:test
   (&optional __test)
   (if __test (setq _test __test)) _test)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _z
    4
    ;; float64 _test
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; int32 _z
       (write-long _z s)
     ;; float64 _test
       (sys::poke _test (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _z
     (setq _z (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _test
     (setq _test (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get exam_ros_msg::wxy_msg :md5sum-) "f139c3f78860af338da979db6c5e8601")
(setf (get exam_ros_msg::wxy_msg :datatype-) "exam_ros_msg/wxy_msg")
(setf (get exam_ros_msg::wxy_msg :definition-)
      "int32 x
int32 y
int32 z
float64 test

")



(provide :exam_ros_msg/wxy_msg "f139c3f78860af338da979db6c5e8601")


