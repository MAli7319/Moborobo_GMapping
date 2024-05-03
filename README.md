# Moborobo_SLAM

### To access the last year's work: 
https://github.com/kaantuncer/Moborobo-Project/
### Important! If you face cmake errors while building, install the package that written in the log
## Also Orin cannot booted with SD card since it does not have jetpack image
## Which changes are made?


#### FOR RSLIDAR:

* Run these commands in your workspace:
* ```
  git clone https://github.com/RoboSense-LiDAR/rslidar_sdk.git
  cd rslidar_sdk
  git submodule init
  git submodule update

  sudo apt-get update
  sudo apt-get install -y libyaml-cpp-dev
  sudo apt-get install -y  libpcap-dev  
  ```
* For more info, you can visit: https://github.com/RoboSense-LiDAR/rslidar_sdk
  
#### FOR MOBOROBO GMAPPING:

* rewriten line 17 in navigation.launch (node pkg gmapping part)
* removed robosense_16.dae geometry part in RS-16.urdf.xacro file (line 20-22)
* for rslidar we set the parameters for ethernet connection as:
  * connect the ethernet (yellow thick cable)
  * enter the wired settings from top-right menu
  * set the ipv4 method as manual
  * enter address as 192.168.1.102
  * enter netmask as 255.255.255.0
* some parameters are changed and added to the config.yaml file such as:
  * change-> send_packet_ros: true (line 6)
  * change-> lidar_type: RS16 (line 10)
  * add-> frame_id: rslidar (line 13)

#### FOR MOBOROBO SLAM WITH "slam-toolbox":
##### On robot:
* `sudo apt install ros-noetic-slam-toolbox`
* Download the zip file in the link: `https://github.com/SteveMacenski/slam_toolbox/tree/noetic-devel`.
* You need to extract the zip file inside the on_robot/src directory


##### Simulation:
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
