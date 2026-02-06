#!/bin/sh

# Identify the active interface (Ethernet or WiFi)
 INTERFACE=$(ip route | awk '/default/ {print $5; exit}')
 CON_TYPE=$(ip addr show "$INTERFACE" | grep -q "wlan" && echo "wifi" || echo "eth")

 # Get initial bytes
 R1=$(cat /sys/class/net/"$INTERFACE"/statistics/rx_bytes)
 T1=$(cat /sys/class/net/"$INTERFACE"/statistics/tx_bytes)
 sleep 1
 # Get bytes after 1 second
 R2=$(cat /sys/class/net/"$INTERFACE"/statistics/rx_bytes)
 T2=$(cat /sys/class/net/"$INTERFACE"/statistics/tx_bytes)

 # Calculate KBPS
 RBPS=$(( (R2 - R1) / 1024 ))
 TBPS=$(( (T2 - T1) / 1024 ))

 # Select Icon
 if [ "$CON_TYPE" = "wifi" ]; then
     ICON="󰖩" # WiFi Icon
     else
         ICON="󰈀" # Ethernet Icon
         fi

         echo "$ICON ↓${RBPS}K ↑${TBPS}K"
