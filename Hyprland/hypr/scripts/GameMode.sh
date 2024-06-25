#!/bin/bash
# Game Mode. Turning off all animations

hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword decoration:drop_shadow 0;\
        keyword decoration:blur:passes 0;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword general:border_size 1;\
        keyword decoration:rounding 0"

# hyprctl reload
#
# # relaunch swaync
# sleep 0.5
# swaync > /dev/null 2>&1 &
