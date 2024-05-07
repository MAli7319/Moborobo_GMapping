;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::ButtonId)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'ButtonId (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::BUTTONID")
  (make-package "ROBOT_MSGS::BUTTONID"))

(in-package "ROS")
;;//! \htmlinclude ButtonId.msg.html


(defclass robot_msgs::ButtonId
  :super ros::object
  :slots (_continue_button _halt_button _controller_mode_button ))

(defmethod robot_msgs::ButtonId
  (:init
   (&key
    ((:continue_button __continue_button) 0)
    ((:halt_button __halt_button) 0)
    ((:controller_mode_button __controller_mode_button) 0)
    )
   (send-super :init)
   (setq _continue_button (round __continue_button))
   (setq _halt_button (round __halt_button))
   (setq _controller_mode_button (round __controller_mode_button))
   self)
  (:continue_button
   (&optional __continue_button)
   (if __continue_button (setq _continue_button __continue_button)) _continue_button)
  (:halt_button
   (&optional __halt_button)
   (if __halt_button (setq _halt_button __halt_button)) _halt_button)
  (:controller_mode_button
   (&optional __controller_mode_button)
   (if __controller_mode_button (setq _controller_mode_button __controller_mode_button)) _controller_mode_button)
  (:serialization-length
   ()
   (+
    ;; int32 _continue_button
    4
    ;; int32 _halt_button
    4
    ;; int32 _controller_mode_button
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _continue_button
       (write-long _continue_button s)
     ;; int32 _halt_button
       (write-long _halt_button s)
     ;; int32 _controller_mode_button
       (write-long _controller_mode_button s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _continue_button
     (setq _continue_button (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _halt_button
     (setq _halt_button (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _controller_mode_button
     (setq _controller_mode_button (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_msgs::ButtonId :md5sum-) "314a9db055f7b4a1c338114270c57aba")
(setf (get robot_msgs::ButtonId :datatype-) "robot_msgs/ButtonId")
(setf (get robot_msgs::ButtonId :definition-)
      "int32 continue_button
int32 halt_button
int32 controller_mode_button
")



(provide :robot_msgs/ButtonId "314a9db055f7b4a1c338114270c57aba")


