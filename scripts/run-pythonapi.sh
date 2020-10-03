#!/bin/bash

# ---------------------------------------------------------------------
# The first argument is "joystick" or "keyboard" to select the type of control to use
# by default is using the joystick (steering wheel)
# ./run-pythonapi joystick will run the script to drive with the steering wheel
# ./run-pythonapi joystick will run the script to drive with the keyboard
# -----------------------------------------------------------------------

# Projects directory
PROJECTS_DIR=../examples 
JOYSTICK_FILENAME=joystick_control.py
KEYBOARD_FILENAME=keyboard_control.py

if [[ $KEYBOARD_FILENAME == *$1* ]]
then
echo ${KEYBOARD_FILENAME}
python_script=${KEYBOARD_FILENAME}
else
python_script=${JOYSTICK_FILENAME}
fi

# Changes relative directory to examples folder
cd ${PROJECTS_DIR}
python3 ${python_script} </dev/null &>/dev/null &
# Stores the process ID
pid=$!
# Displays the process ID in the console
echo "Simulation Process ${pid}" 
# Wait for a 2 seconds. This is to give the window time to
# appear. Change it to a higher value if your system is slower. 
sleep 2
# Get the X name of the evince window
name=$(wmctrl -lp | awk -vpid="$pid" '$3==pid{print $1}')
# Position the window
wmctrl -ir "$name" -e 0,1920,0,0,0
