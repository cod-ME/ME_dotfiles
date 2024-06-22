#!/usr/bin/bash

# Get the monitor index based on the name
get_monitor_index() {
  monitor_name=$1
  monitor_index=$(hyprctl monitors -j | gojq -r "to_entries[] | select(.value.name == \"$monitor_name\") | .key")
  echo "$monitor_index"
}

# Get the active window's workspace
focused_ws=$(hyprctl activewindow -j | gojq -r '.workspace.id')

if [[ "$focused_ws" == 'null' || -z "$focused_ws" ]]; then
  echo "0"  # Default to monitor 0 if no focused workspace is found
else
  # Get the monitor of the active workspace
  monitor_name=$(hyprctl workspaces -j | gojq -r ".[] | select(.id == $focused_ws) | .monitor")
  monitor_index=$(get_monitor_index "$monitor_name")
  echo "$monitor_index"
fi

if [ "$1" == "--once" ]; then
  exit 0
else
  # Continuously watch for changes in the active window
  hyprctl dispatch listen | grep --line-buffered "workspace>>" | while read -r line; do
    case ${line%>>*} in
      "workspace")
        focused_ws=$(echo $line | gojq -r '.workspace.id')
        monitor_name=$(hyprctl workspaces -j | gojq -r ".[] | select(.id == $focused_ws) | .monitor")
        monitor_index=$(get_monitor_index "$monitor_name")
        echo "$monitor_index"
        ;;
    esac
  done
fi
