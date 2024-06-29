#!/bin/bash

# Path to the hyprpaper configuration file
hyprpaper_conf="$HOME/.config/hypr/hyprpaper.conf"

# Path to the TOML file that needs to be updated
toml_file="$HOME/.config/hypr/hyprlock.conf"

# Extract the wallpaper path from the hyprpaper configuration file
wallpaper_path=$(grep "^preload" "$hyprpaper_conf" | cut -d'=' -f2 | tr -d ' ')

# Check if the wallpaper path was found
if [ -z "$wallpaper_path" ]; then
    echo "No wallpaper path found in $hyprpaper_conf"
    exit 1
fi

# Update the TOML file with the extracted wallpaper path
sed -i "s|path = .*|path = \"$wallpaper_path\"|g" "$toml_file"

echo "Wallpaper path updated in $toml_file"
