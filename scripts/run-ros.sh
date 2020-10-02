#!/bin/bash

# ---------------------------------------------------------------------
# SCRIPT TO RUN CARLA WITH ROS
#
# Troubleshooting:
# Could not contact ROS master at http://localhost:XXXX
# Run the next command on the terminal: roscore
# -----------------------------------------------------------------------

cd ~
cd /home/uwarobotics/Documents/Project/CARLA-package
echo "Opening CARLA"
./CarlaUE4.sh </dev/null &>/dev/null &

# Stores the process ID
pid=$!
# Displays the process ID in the console
echo "CARLA Process ${pid}"

# Waits 10 seconds to open Carla 
sleep 10

# -----------------------------------------------------------------------
# Run ROS
echo "Opening ROS"
export PYTHONPATH=$PYTHONPATH:/Simulation/Gerardo/carla/PythonAPI/carla/dist/carla-0.9.9-py2.7-linux-x86_64.egg
cd ~
source /opt/carla-ros-bridge/melodic/setup.bash
roslaunch carla_ros_bridge carla_ros_bridge_with_example_ego_vehicle.launch </dev/null &>/dev/null &

# Stores the process ID
pid=$!
# Displays the process ID in the console
echo "ROSLAUNCH Process ${pid}"


# -----------------------------------------------------------------------
# Run RVIZ
echo "Opening RVIZ"
rviz </dev/null &>/dev/null &

# Stores the process ID
pid=$!
# Displays the process ID in the console
echo "ROSLAUNCH Process ${pid}"