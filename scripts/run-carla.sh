#!/bin/bash

# Old script to run CARLA Unreal Engine
# CARLA_DIR=/Simulation/Gerardo/carla
# export UE4_ROOT=~/UnrealEngine_4.24
# cd ${CARLA_DIR}
# make launch

cd ~
cd /home/uwarobotics/Documents/Project/CARLA-package
./CarlaUE4.sh </dev/null &>/dev/null &

# Stores the process ID
# pid=$!
# Displays the process ID in the console
# echo "CARLA Process ${pid}"

# Waits 10 seconds to open Carla 
sleep 10

# ---------------------------------------------------------------------
# The first argument is "joystick" or "keyboard" to select the type of control to use
# by default is using the joystick (steering wheel)
# ./run-pythonapi joystick will run the script to drive with the steering wheel
# ./run-pythonapi joystick will run the script to drive with the keyboard
# -----------------------------------------------------------------------


# Projects directory
# PROJECTS_DIR=/Simulation/Gerardo/carla/PythonAPI/project
PROJECTS_DIR=/home/uwarobotics/Documents/Project/CARLA-package/PythonAPI/examples 
JOYSTICK_FILENAME=joystick_control.py
KEYBOARD_FILENAME=keyboard_control.py
# KEYBOARD_FILENAME=keyboard_control.py

if [[ $KEYBOARD_FILENAME == *$1* ]]
then
echo ${KEYBOARD_FILENAME}
python_script=${KEYBOARD_FILENAME}
else
python_script=${JOYSTICK_FILENAME}
fi
cd ~
cd ${PROJECTS_DIR}
python3 ${python_script}