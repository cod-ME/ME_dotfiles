#!/usr/bin/bash
state=$(eww get music_open)
focused_monitor=$(~/.config/waybar/scripts/get_focused_monitor_hyprland.sh --once)

if [[ "$state" == "true" || "$1" == "--close" ]]; then
    eww update anim_open_music=false
    eww update music_open=false
    sleep 0.2
    eww close music 2>/dev/null
    eww update cavajson=''
else
    eww update anim_open_music=true
    eww update music_monitor="$focused_monitor"
    eww open music
    eww update music_open=true
fi
