#!/bin/bash
# Autostarting programs
hyprpaper &
spotify &
discord &
kitty &
mako &
waybar &

# Starts firefox, waits for it to open, and then moves it to workspace 2
firefox &

while ! hyprctl clients | grep -q "Firefox"; do
  sleep 0.2
done

hyprctl dispatch movetoworkspace 2, class:firefox
