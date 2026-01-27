#!/bin/bash


#set resolution to 1080p automatically
xrandr --output Virtual-1 --mode 1920x1080 & 

#run feh 
~/.fehbg &

#start picom (window compositor)
picom -b &

#start slstatus
exec slstatus &

#start dwm
exec dwm
