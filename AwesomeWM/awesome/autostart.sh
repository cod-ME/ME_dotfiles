#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run caffeine
run pamac-tray
run thunderbird
run variety
run xfce4-power-manager
run blueberry-tray
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run numlockx on
run volumeicon
run ~/.config/awesome/scripts/xrandr.sh

