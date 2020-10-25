#!/bin/bash

# ---------------------------------------------------------------------
# Disable mouse and keyboard control with joystick
#
# Config file dir: /usr/share/X11/xorg.conf.d/50-joystick.conf
# Run as ADMIN! sudo ./<script>
# -----------------------------------------------------------------------

script_path="/usr/share/X11/xorg.conf.d/50-joystick.conf"
sudo chmod +x ${script_path}
echo "Script path: ${script_path}"
echo "Section \"InputClass\"" > ${script_path}
echo "  Identifier \"joystick catchall\"" >> ${script_path}
echo "  MatchIsJoystick \"on\"" >> ${script_path}
echo "  MatchDevicePath \"/dev/input/event*\"" >> ${script_path}
echo "  Driver \"joystick\"" >> ${script_path}
echo "  Option \"StartKeysEnabled\" \"off\" # Disable mouse support of joypad" >> ${script_path}
echo "  Option \"StartMouseEnabled\" \"off\"" >> ${script_path}
echo "EndSection" >> ${script_path}

# -------- Backup Config ----------
# Section "InputClass"
# 	Identifier "joystick catchall"
# 	MatchIsJoystick "on"
# 	MatchDevicePath "/dev/input/event*"
# 	Driver "joystick"
# EndSection