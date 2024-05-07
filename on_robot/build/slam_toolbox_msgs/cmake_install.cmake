# Install script for directory: /home/moborobot/Moborobo-Project/on_robot/src/slam_toolbox_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/moborobot/Moborobo-Project/on_robot/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_toolbox_msgs/srv" TYPE FILE FILES
    "/home/moborobot/Moborobo-Project/on_robot/src/slam_toolbox_msgs/srv/Pause.srv"
    "/home/moborobot/Moborobo-Project/on_robot/src/slam_toolbox_msgs/srv/ClearQueue.srv"
    "/home/moborobot/Moborobo-Project/on_robot/src/slam_toolbox_msgs/srv/ToggleInteractive.srv"
    "/home/moborobot/Moborobo-Project/on_robot/src/slam_toolbox_msgs/srv/Clear.srv"
    "/home/moborobot/Moborobo-Project/on_robot/src/slam_toolbox_msgs/srv/SaveMap.srv"
    "/home/moborobot/Moborobo-Project/on_robot/src/slam_toolbox_msgs/srv/LoopClosure.srv"
    "/home/moborobot/Moborobo-Project/on_robot/src/slam_toolbox_msgs/srv/MergeMaps.srv"
    "/home/moborobot/Moborobo-Project/on_robot/src/slam_toolbox_msgs/srv/AddSubmap.srv"
    "/home/moborobot/Moborobo-Project/on_robot/src/slam_toolbox_msgs/srv/DeserializePoseGraph.srv"
    "/home/moborobot/Moborobo-Project/on_robot/src/slam_toolbox_msgs/srv/SerializePoseGraph.srv"
    "/home/moborobot/Moborobo-Project/on_robot/src/slam_toolbox_msgs/srv/Reset.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_toolbox_msgs/cmake" TYPE FILE FILES "/home/moborobot/Moborobo-Project/on_robot/build/slam_toolbox_msgs/catkin_generated/installspace/slam_toolbox_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/moborobot/Moborobo-Project/on_robot/devel/include/slam_toolbox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/moborobot/Moborobo-Project/on_robot/devel/share/roseus/ros/slam_toolbox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/moborobot/Moborobo-Project/on_robot/devel/share/common-lisp/ros/slam_toolbox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/moborobot/Moborobo-Project/on_robot/devel/share/gennodejs/ros/slam_toolbox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/moborobot/Moborobo-Project/on_robot/devel/lib/python3/dist-packages/slam_toolbox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/moborobot/Moborobo-Project/on_robot/devel/lib/python3/dist-packages/slam_toolbox_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/moborobot/Moborobo-Project/on_robot/build/slam_toolbox_msgs/catkin_generated/installspace/slam_toolbox_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_toolbox_msgs/cmake" TYPE FILE FILES "/home/moborobot/Moborobo-Project/on_robot/build/slam_toolbox_msgs/catkin_generated/installspace/slam_toolbox_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_toolbox_msgs/cmake" TYPE FILE FILES
    "/home/moborobot/Moborobo-Project/on_robot/build/slam_toolbox_msgs/catkin_generated/installspace/slam_toolbox_msgsConfig.cmake"
    "/home/moborobot/Moborobo-Project/on_robot/build/slam_toolbox_msgs/catkin_generated/installspace/slam_toolbox_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/slam_toolbox_msgs" TYPE FILE FILES "/home/moborobot/Moborobo-Project/on_robot/src/slam_toolbox_msgs/package.xml")
endif()

