#!/bin/bash

# ---------------------------------------------------------------------
# Initial setup for the application
# -----------------------------------------------------------------------

# Sets an custom icon of the executable bash file
img_path=$(readlink -f ../carla-logo.png)
echo "path: ${img_path}"
gio set run-carla.sh -t string metadata::custom-icon file://${img_path}
echo "Icon set"

# Creates a shorcut in desktop
script_path=$(readlink -f run-carla.sh)
echo "Script path: ${script_path}"
echo "#!/usr/bin/env xdg-open" > ~/CARLA-UWA.desktop
echo "[Desktop Entry]" >> ~/CARLA-UWA.desktop
echo "Version=1.0" >> ~/CARLA-UWA.desktop
echo "Type=Application" >> ~/CARLA-UWA.desktop
echo "Terminal=false" >> ~/CARLA-UWA.desktop
echo "Exec=${script_path}" >> ~/CARLA-UWA.desktop
echo "Name=CARLA-UWA" >> ~/CARLA-UWA.desktop
echo "Comment=CARLA-UWA Simulation" >> ~/CARLA-UWA.desktop
echo "Icon=${img_path}" >> ~/CARLA-UWA.desktop

# Changes the permission of shorcut in desktop to execute
chmod +x ~/CARLA-UWA.desktop