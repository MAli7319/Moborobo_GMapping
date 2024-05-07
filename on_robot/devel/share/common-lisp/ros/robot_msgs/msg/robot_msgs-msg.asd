
(cl:in-package :asdf)

(defsystem "robot_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ButtonId" :depends-on ("_package_ButtonId"))
    (:file "_package_ButtonId" :depends-on ("_package"))
    (:file "ButtonStatus" :depends-on ("_package_ButtonStatus"))
    (:file "_package_ButtonStatus" :depends-on ("_package"))
    (:file "MotorSpeedCommand" :depends-on ("_package_MotorSpeedCommand"))
    (:file "_package_MotorSpeedCommand" :depends-on ("_package"))
  ))