#!/bin/sh

# 1. Get Bluetooth Status (Checks if UE MEGABOOM is connected)
# Replace the MAC address if it's different, but this matches your previous logs.
 BT_MAC="C0:28:8D:9B:A5:36"
 IS_CONNECTED=$(bluetoothctl info "$BT_MAC" | grep "Connected: yes")

 if [ -n "$IS_CONNECTED" ]; then
     BT_ICON="󰂯 " # Bluetooth Icon (requires a Nerd Font)
     else
         BT_ICON=""
         fi

         # 2. Get Volume and Mute state from PipeWire
         MUTE=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print $2}')
         VOL=$(pactl get-sink-volume @DEFAULT_SINK@ | awk '{print $5}' | sed 's/%//')

         # 3. Determine Emoji State
         if [ "$MUTE" = "yes" ]; then
             VOL_EMOJI="󰝟 "
             elif [ "$VOL" -ge 70 ]; then
                 VOL_EMOJI="󰕾 "
                 elif [ "$VOL" -ge 30 ]; then
                     VOL_EMOJI="󰖀 "
                     else
                         VOL_EMOJI="󰕿 "
                         fi

                         # Output: [BluetoothIcon][VolumeEmoji] [Percentage]%
                         echo "${BT_ICON}${VOL_EMOJI}${VOL}%"
