# Moborobo_SLAM

### To access the last year's work: 
https://github.com/kaantuncer/Moborobo-Project/

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

## How to Run?
* run this command before launch: `source devel/setup.bash`
* for launch: `roslaunch moborobo navigation.launch`
