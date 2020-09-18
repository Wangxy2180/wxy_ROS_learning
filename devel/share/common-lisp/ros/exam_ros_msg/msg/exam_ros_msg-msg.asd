
(cl:in-package :asdf)

(defsystem "exam_ros_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "wxy_msg" :depends-on ("_package_wxy_msg"))
    (:file "_package_wxy_msg" :depends-on ("_package"))
  ))