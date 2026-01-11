#!/bin/bash

MENU=$(cat << 'EOF'
 Profile
 Apps
 Emoji Picker
 Icon Picker
󰴱 Color Picker
󰆠 Wallpaper Selector
 Waybar Selector
 Screenshot
 Lock
󰐥 Shutdown
EOF
)

choice=$(echo "$MENU" | rofi -dmenu -i -p "Scripts" -selected-row 1)

case "$choice" in
    " Profile")
        bash ~/.config/rofi/scripts/about.sh
        ;;
    " Apps")
        rofi -show drun
        ;;
    " Emoji Picker")
        bash ~/.config/rofi/scripts/emoji-picker.sh
        ;;
    " Icon Picker")
        bash ~/.config/rofi/scripts/icon-picker.sh
        ;;
    "󰴱 Color Picker")
        bash ~/.config/hypr/scripts/colorpick.sh
        ;;
    "󰆠 Wallpaper Selector")
        bash ~/.config/rofi/scripts/wallpaper.sh
        ;;
    " Waybar Selector")
        bash ~/.config/rofi/scripts/wbswitcher.sh
        ;;
    " Screenshot")
        bash ~/.config/hypr/scripts/screenshot.sh
        ;;
    " Lock")
        hyprlock
        ;;
    "󰐥 Shutdown")
        shutdown now
        ;;
esac
