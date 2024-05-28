#!/usr/bin/env python3

import rospy
import tf
from tf.transformations import euler_from_quaternion, quaternion_from_euler
from std_msgs.msg import Header
from geometry_msgs.msg import Pose, Point, Quaternion, Pose2D, PoseStamped
from slam_toolbox_msgs.srv import DeserializePoseGraph


MAX_QUEUE_SIZE = 50
COMMANDS_FILE = '/home/moborobot/Moborobo-Project/on_robot/src/moborobot/scripts/test_department_waypoints.txt'
NUMBER_OF_COMMANDS = 0

BOLD_RED_LOG = '\033[1;31m'
GREEN_LOG = '\033[0;32m'
CYAN_LOG = '\033[0;36m'
PURPLE_LOG = '\033[0;35m'
RESET_COLOR = '\033[0;0m'


def load_map_and_give_dest(waypoint_list, checker):

    filename = str(waypoint_list[checker].split("\n")[0].split(" ")[4])[1:-1]
    match_type = int(waypoint_list[checker].split("\n")[1].split(" ")[1])
    x = float(waypoint_list[checker].split("\n")[3].split(" ")[3])
    y = float(waypoint_list[checker].split("\n")[4].split(" ")[3])
    theta = float(waypoint_list[checker].split("\n")[5].split(" ")[3][:-1])

    seq = int(waypoint_list[checker+1].split(" ")[7])
    secs = int(waypoint_list[checker+1].split(" ")[14])
    nsecs = int(waypoint_list[checker+1].split(" ")[19])
    stamp = rospy.Time(secs, nsecs)
    frame_id = str(waypoint_list[checker+1].split(" ")[22].split("\n")[0])[1:-1]

    pose_x = float(waypoint_list[checker+1].split(" ")[29])
    pose_y = float(waypoint_list[checker+1].split(" ")[34])
    pose_z = float(waypoint_list[checker+1].split(" ")[39])

    angle_x = float(waypoint_list[checker+1].split(" ")[46])
    angle_y = float(waypoint_list[checker+1].split(" ")[51])
    angle_z = float(waypoint_list[checker+1].split(" ")[56])
    angle_w = float(waypoint_list[checker+1].split(" ")[61][:-1])

    call_deserialize_map_service(filename, match_type, x, y, theta)
    
    destination_message = PoseStamped(Header(seq, stamp, frame_id), 
                                      Pose(
                                          Point(pose_x, pose_y, pose_z), 
                                          Quaternion(angle_x, angle_y, angle_z, angle_w)))
    
    rospy.loginfo(PURPLE_LOG + "Destination point is received!" + RESET_COLOR)
    
    return destination_message



def call_deserialize_map_service(filename, match_type, x, y, theta):

    try:
        deserialize_map = rospy.ServiceProxy("/slam_toolbox/deserialize_map", DeserializePoseGraph)
        deserialize_map(filename, match_type, Pose2D(x, y, theta))
        rospy.loginfo(CYAN_LOG + "New map is loaded successfully!" + RESET_COLOR)
    except rospy.ServiceException as e:
        rospy.logwarn(e)


if __name__ == '__main__':

    rospy.init_node("moborobot_tf_listener")
    destination = rospy.Publisher("/move_base_simple/goal", PoseStamped, queue_size=10)

    checker = 0
    waypoint_list = []
    with open(COMMANDS_FILE, "r") as waypoints_file:
        waypoint = waypoints_file.read().split("\n\n")
        waypoint_list.extend(waypoint)

    NUMBER_OF_COMMANDS = len(waypoint_list)

    rospy.wait_for_service("/slam_toolbox/deserialize_map")
    
    destination_message = load_map_and_give_dest(waypoint_list, checker)
    
    listener = tf.TransformListener()
    rate = rospy.Rate(10)

    loc_x_queue = []
    loc_y_queue = []
    loc_theta_queue = []

    while not rospy.is_shutdown():
        try:
            (location, angle) = listener.lookupTransform('/map', '/base_link', rospy.Time(0))
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            continue

        loc_x = round(location[0], 2)
        loc_y = round(location[1], 2)
        loc_theta = round(euler_from_quaternion(angle)[-1], 2)

        loc_x_queue.append(loc_x)
        loc_y_queue.append(loc_y)
        loc_theta_queue.append(loc_theta)

        if len(loc_x_queue) == MAX_QUEUE_SIZE:
            if len(set(loc_x_queue)) == 1 and len(set(loc_y_queue)) == 1 and len(set(loc_theta_queue)) == 1:
                
                rospy.loginfo(GREEN_LOG + "Arrived!" + RESET_COLOR)

                loc_x_queue.clear()
                loc_y_queue.clear()
                loc_theta_queue.clear()
                checker += 2

                print(checker)
                if checker == NUMBER_OF_COMMANDS:
                    break

                # load new map and publish its destination
                destination_message = load_map_and_give_dest(waypoint_list, checker)

            destination.publish(destination_message)
            
            if len(loc_x_queue) != 0:
                loc_x_queue.pop(0)
                loc_y_queue.pop(0)
                loc_theta_queue.pop(0)

    rospy.signal_shutdown(BOLD_RED_LOG + "My job is done :)" + RESET_COLOR)