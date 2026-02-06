#!/bin/sh

# Get the status of the player
 STATUS=$(playerctl status 2>/dev/null)

 if [ "$STATUS" = "Playing" ]; then
     # Get Artist and Title
         ARTIST=$(playerctl metadata artist)
             TITLE=$(playerctl metadata title)
                 
                     # Format the output (30 character limit to keep the bar clean)
                         OUTPUT="$ARTIST - $TITLE"
                             echo "󰝚 ${OUTPUT}"
                             elif [ "$STATUS" = "Paused" ]; then
                                 echo "󰏤   Paused"
                                 else
                                     echo "" # Hide when nothing is playing
                                     fi
