#!/bin/bash

# ---------------------------------------------------------------------
# Troubleshooting:
# Could not contact ROS master at http://localhost:XXXX
# Run the next command on the terminal: roscore
# -----------------------------------------------------------------------

export PYTHONPATH=$PYTHONPATH:/Simulation/Gerardo/carla/PythonAPI/carla/dist/carla-0.9.9-py2.7-linux-x86_64.egg
source /opt/carla-ros-bridge/melodic/setup.bash
roslaunch carla_ros_bridge carla_ros_bridge_with_example_ego_vehicle.launch
#source carla_ros_ws/devel/setup.bash
#roslaunch carla_ros_bridge carla_ros_bridge_nUWAy_rviz.launch
# for recording rosbags:
# rosbag record /carla/ego_vehicle/imu /carla/ego_vehicle/lidar/lidar_safety_front_right/point_cloud /carla/ego_vehicle/lidar/lidar_safety_front_left/point_cloud /cla/ego_vehicle/lidar/lidar_safety_rear_right/point_cloud /carla/ego_vehicle/lidar/lidar_safety_rear_left/point_cloud /carla/ego_vehicle/lidar/lidar_localisation_front/point_cloud /carla/ego_vehicle/lidar/lidar_localisation_rear/point_cloud /carla/ego_vehicle/lidar/lidar_velodyne_front/point_cloud /carla/ego_vehicle/lidar/lidar_velodyne_rear/point_cloud /carla/ego_vehicle/gnss/gnss1/fix /carla/ego_vehicle/camera/rgb/front/image_color /carla/ego_vehicle/camera/rgb/rear/image_color  /tf /tf_static
