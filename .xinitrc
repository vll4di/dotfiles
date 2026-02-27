#!/bin/bash


#set resolution to 1080p automatically
xrandr --output Virtual-1 --mode 1920x1080 & 

# Disable screen blanking and power management
xset s off
xset -dpms
xset s noblank


#run feh 
sh ~/.fehbg &

#start picom (window compositor)
picom --config ~/.config/picom/picom.conf -b & 
#start slstatus
slstatus &

#Set DPI for scaling (120%)
xrandr --dpi 115

# Link the Intel and NVIDIA GPUs
xrandr --setprovideroutputsource 1 0

# Enable the external monitor mirror of the laptop screen
xrandr --output DP-1-1 --auto --same-as eDP-1 &

#feh automatic background
#feh --bg-fill '/home/vll4di/Downloads/3820x2160-dark-archlinux2.png' &

#start dwm
exec dwm
