;; Auto-generated. Do not edit!


(when (boundp 'robot_msgs::ButtonStatus)
  (if (not (find-package "ROBOT_MSGS"))
    (make-package "ROBOT_MSGS"))
  (shadow 'ButtonStatus (find-package "ROBOT_MSGS")))
(unless (find-package "ROBOT_MSGS::BUTTONSTATUS")
  (make-package "ROBOT_MSGS::BUTTONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ButtonStatus.msg.html


(defclass robot_msgs::ButtonStatus
  :super ros::object
  :slots (_continue_button _halt_button _controller_mode_button ))

(defmethod robot_msgs::ButtonStatus
  (:init
   (&key
    ((:continue_button __continue_button) nil)
    ((:halt_button __halt_button) nil)
    ((:controller_mode_button __controller_mode_button) nil)
    )
   (send-super :init)
   (setq _continue_button __continue_button)
   (setq _halt_button __halt_button)
   (setq _controller_mode_button __controller_mode_button)
   self)
  (:continue_button
   (&optional (__continue_button :null))
   (if (not (eq __continue_button :null)) (setq _continue_button __continue_button)) _continue_button)
  (:halt_button
   (&optional (__halt_button :null))
   (if (not (eq __halt_button :null)) (setq _halt_button __halt_button)) _halt_button)
  (:controller_mode_button
   (&optional (__controller_mode_button :null))
   (if (not (eq __controller_mode_button :null)) (setq _controller_mode_button __controller_mode_button)) _controller_mode_button)
  (:serialization-length
   ()
   (+
    ;; bool _continue_button
    1
    ;; bool _halt_button
    1
    ;; bool _controller_mode_button
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _continue_button
       (if _continue_button (write-byte -1 s) (write-byte 0 s))
     ;; bool _halt_button
       (if _halt_button (write-byte -1 s) (write-byte 0 s))
     ;; bool _controller_mode_button
       (if _controller_mode_button (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _continue_button
     (setq _continue_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _halt_button
     (setq _halt_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _controller_mode_button
     (setq _controller_mode_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robot_msgs::ButtonStatus :md5sum-) "6604d0e7e58a8aeec7fe727e398df583")
(setf (get robot_msgs::ButtonStatus :datatype-) "robot_msgs/ButtonStatus")
(setf (get robot_msgs::ButtonStatus :definition-)
      "bool continue_button
bool halt_button
bool controller_mode_button
")



(provide :robot_msgs/ButtonStatus "6604d0e7e58a8aeec7fe727e398df583")


