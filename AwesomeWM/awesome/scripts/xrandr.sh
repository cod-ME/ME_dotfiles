#!/bin/bash

# 3 Monitor setup
# xrandr --output DP-1-4 --mode 1920x1080 --pos 0x1000 --rotate normal --rate 60
# xrandr --output DP-1-3 --mode 2560x1440 --pos 1920x0 --rotate normal --rate 120
# xrandr --output eDP-1 --mode 2736x1824 --pos 1920x1440 --rotate normal --rate 60
# xrandr --output eDP-1 --mode 2736x1824 --pos 1920x1440 --rotate normal --rate 60 --scale 0.5x0.5
#xrandr --output eDP-1 --mode 1920x1080 --rotate normal --rate 60
#xrandr --output HDMI-1 --mode 1920x1080 --pos 1x1920 --rotate normal --rate 60
xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --mode None --pos 1920x0 --rotate normal

