#!/bin/bash

killall -9 waybar 
killall -9 swaync 
pkill -x swayosd-server
waybar &
swaync &
swayosd-server &

(
    sleep 0.9
    notify-send "󰑓 Reload Complete" "Waybar and SwayNC"
) &