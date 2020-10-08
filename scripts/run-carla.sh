#!/bin/bash

# Absolute path to this script
SCRIPT=$(readlink -f "$0")
# Absolute path this script is
SCRIPTPATH=$(dirname "$SCRIPT")
cd $SCRIPTPATH

# Run CARLA World
cd ../..
./CarlaUE4.sh </dev/null &>/dev/null &

# Stores the process ID
# pid=$!
# Displays the process ID in the console
# echo "CARLA Process ${pid}"

# Waits 10 seconds to open Carla 
sleep 10

# Run Python API Simulation
cd PythonAPI/scripts
./run-pythonapi.sh