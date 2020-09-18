;; Auto-generated. Do not edit!


(when (boundp 'exam2::my_data_type)
  (if (not (find-package "EXAM2"))
    (make-package "EXAM2"))
  (shadow 'my_data_type (find-package "EXAM2")))
(unless (find-package "EXAM2::MY_DATA_TYPE")
  (make-package "EXAM2::MY_DATA_TYPE"))

(in-package "ROS")
;;//! \htmlinclude my_data_type.msg.html


(defclass exam2::my_data_type
  :super ros::object
  :slots (_A _B _C ))

(defmethod exam2::my_data_type
  (:init
   (&key
    ((:A __A) 0)
    ((:B __B) 0)
    ((:C __C) 0)
    )
   (send-super :init)
   (setq _A (round __A))
   (setq _B (round __B))
   (setq _C (round __C))
   self)
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:B
   (&optional __B)
   (if __B (setq _B __B)) _B)
  (:C
   (&optional __C)
   (if __C (setq _C __C)) _C)
  (:serialization-length
   ()
   (+
    ;; int32 _A
    4
    ;; int32 _B
    4
    ;; int32 _C
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _A
       (write-long _A s)
     ;; int32 _B
       (write-long _B s)
     ;; int32 _C
       (write-long _C s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _A
     (setq _A (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _B
     (setq _B (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _C
     (setq _C (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get exam2::my_data_type :md5sum-) "e7a68ce4e0b75a9719b4950a7069c9d4")
(setf (get exam2::my_data_type :datatype-) "exam2/my_data_type")
(setf (get exam2::my_data_type :definition-)
      "int32 A
int32 B
int32 C

")



(provide :exam2/my_data_type "e7a68ce4e0b75a9719b4950a7069c9d4")


