#!/bin/sh
# This script will execute scripts and execute WM.

# NumLock
[ "$(xset q | grep Num | awk '{print $8}')" == "off" ] && xdotool key Num_Lock &

# Set the background
setbg refresh &

# Start `dunst` for notifications
dunst &

# Composite manager
compositor &

# Mouse invisibility
unclutter &

# Optional script
optional >/dev/null 2>&1 &

# `remind` send notification if any notification exists
remind --notify &

# Keybindings
sxhkd &

exec i3
