#!/bin/bash

# ==============================
# Waybar Rofi Theme Switcher
# ==============================

WAYBAR_DIR="$HOME/.config/waybar"
THEMES_DIR="$WAYBAR_DIR/themes"
CACHE="$HOME/.cache/waybar-theme"

# Get available themes (folder names)
THEMES=$(find "$THEMES_DIR" -maxdepth 1 -mindepth 1 -type d -printf "%f\n")

# Rofi menu
CHOICE=$(echo "$THEMES" | rofi -dmenu -i \
  -p "Waybar Theme" \
  -theme-str 'window { width: 420px; }')

# Exit if nothing selected
[ -z "$CHOICE" ] && exit 0

THEME_PATH="$THEMES_DIR/$CHOICE"

# Validate theme structure
if [[ ! -f "$THEME_PATH/config.jsonc" || ! -f "$THEME_PATH/style.css" ]]; then
  notify-send "Waybar Switcher" "Invalid theme: $CHOICE"
  exit 1
fi

# Apply theme (symlinks)
ln -sf "$THEME_PATH/config.jsonc" "$WAYBAR_DIR/config.jsonc"
ln -sf "$THEME_PATH/style.css" "$WAYBAR_DIR/style.css"

# Save last used theme
echo "$CHOICE" > "$CACHE"

killall waybar 
waybar &

# Notification
notify-send "Waybar" "Theme changed   $CHOICE" -i view-refresh

exit 0
