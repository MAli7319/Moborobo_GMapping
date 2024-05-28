#!/usr/bin/env python

import rospy
from std_msgs.msg import String


def callback(data):
    rospy.loginfo(data.data)
    print("If you want to access the value only: {}".format(data.data.split(" ")[-1]))
    print("-"*20)
        
def listener():
    
    rospy.init_node('battery_level_listener', anonymous=True)
 
    rospy.Subscriber("/battery_level", String, callback)
 
    rospy.spin()
 
if __name__ == '__main__':
    listener()