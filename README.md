# Moborobo_SLAM

### To access the last year's work: 
https://github.com/kaantuncer/Moborobo-Project/
### Important! If you face cmake errors while building, install the package that written in the log
## Also Orin cannot booted with SD card since it does not have jetpack image
## Which changes are made?

#### FOR MOBOROBO GMAPPING:

* rewriten line 17 in navigation.launch (node pkg gmapping part)
* removed robosense_16.dae geometry part in RS-16.urdf.xacro file (line 20-22)

#### FOR MOBOROBO SLAM WITH "slam-toolbox":

* commented out line 17-23 in navigation.launch (node pkg gmapping part)

  * ##### For execution:
    * `sudo apt install ros-noetic-slam-toolbox`
    * `cp /opt/ros/noetic/share/slam_toolbox/config/mapper_params_online_async.yaml catkin_ws/src/moborobo/config/`
    * `roslaunch slam_toolbox online_async.launch params_file:=./src/moborobo/config/mapper_params_online_async.yaml use_sim_time:=true`

#### FOR RUNNING GPS:

* `pip install pyserial`
* `sudo apt install ros-noetic-nmea-msgs`
* Need to be sure that gps is connected with usb port

* ##### if permission denied while running the py script:
  * `sudo su`
  * //type your password
  * `cd /`
  * `cd dev`
  * `chown username ttyUSB0`
 
* `rosrun moborobo locoSysPublisher.py` for publishing the gps data
* `rosrun moborobo locoSysSubscriber.py` for obtaining and reading the data (or you can simply run `rostopic echo /moborobo/mygps`)

Simulation: `sudo apt-get install ros-noetic-hector-gazebo-plugins`


#### Distance Calculation:



## How to Run?
* run this command in catkin_ws before launch: `source devel/setup.bash`
* for launch: `roslaunch moborobo gmapping_room.launch`
