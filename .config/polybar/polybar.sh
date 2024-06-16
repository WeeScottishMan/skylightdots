#!/bin/bash

# Kill all polybars
killall polybar

# Set the Polybar executable path
polybar_exec="/usr/bin/polybar"

# Start Polybar on HDMI-0
MONITOR=HDMI-0 $polybar_exec polybar &

# Wait for 1 second before launching on DP-4
sleep 0.2

# Start Polybar on DP-4  
MONITOR=DP-4 $polybar_exec polybar &
