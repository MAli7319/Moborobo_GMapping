#!/usr/bin/env python

import rospy
from std_msgs.msg import String
import serial
import serial.tools.list_ports

def find_serial_port(device_id):
    ports = serial.tools.list_ports.comports()
    for port in ports:
        print(port.hwid)
        if device_id in port.hwid:
            return port.device
    return None

def talker():
    # Initialize the ROS node
    rospy.init_node('battery_level_talker', anonymous=True)
    
    # Create a publisher to the 'battery_level' topic
    pub = rospy.Publisher('battery_level', String, queue_size=10)
    
    # Set the rate at which to publish messages
    rate = rospy.Rate(1)  # 1 Hz
    
    # Device ID to search for
    device_id = "1A86:7523"  # Replace with your actual device ID
    
    # Find the serial port with the specified device ID
    port = find_serial_port(device_id)
    
    if port is None:
        rospy.logerr(f"Device with ID {device_id} not found.")
        return
    
    # Open the serial port
    ser = serial.Serial(port, 9600)
    
    while not rospy.is_shutdown():
        if ser.in_waiting > 0:
            # Read the line from the serial port
            line = ser.readline().decode('utf-8').strip()
            
            # Log the received battery level
            rospy.loginfo(f"Received battery level: {line}")
            
            # Publish the battery level to the 'battery_level' topic
            pub.publish(line)
        
        # Sleep to maintain the loop rate
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
