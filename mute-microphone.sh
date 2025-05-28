#!/bin/bash
SOURCE=@DEFAULT_SOURCE@

pactl set-source-mute $SOURCE toggle
notify-send "$(pactl get-source-mute $SOURCE)"
