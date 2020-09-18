
(cl:in-package :asdf)

(defsystem "exam2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "my_data_type" :depends-on ("_package_my_data_type"))
    (:file "_package_my_data_type" :depends-on ("_package"))
  ))