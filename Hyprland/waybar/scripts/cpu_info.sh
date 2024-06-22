#!/bin/bash

# Create a log file if it doesn't exist
if [ ! -f /tmp/cpu_usage.log ]; then
    touch /tmp/cpu_usage.log
fi

# Get CPU usage using mpstat, calculate the average of all CPUs
cpu_usage=$(mpstat -P ALL 1 1 | awk '/Average/ && $2 ~ /[0-9]+/ {sum+=$3; count++} END {if (count > 0) print sum/count; else print 0}')

# Append to log file
echo "$(date +%s) $cpu_usage" >> /tmp/cpu_usage.log

# Keep only the last 60 entries (1 minute if interval is 1 second)
tail -n 60 /tmp/cpu_usage.log > /tmp/cpu_usage.tmp && mv /tmp/cpu_usage.tmp /tmp/cpu_usage.log

# Generate graph
gnuplot -e "
set terminal png size 400,100;
set output '/tmp/cpu_usage.png';
set xrange [*:*];
set yrange [0:100];
unset key;
set title 'CPU Usage';
set xlabel 'Time';
set ylabel 'Usage (%)';
plot '/tmp/cpu_usage.log' using 1:2 with lines notitle;
"

# Output in JSON format for Waybar with image tooltip
echo "{\"text\": \"CPU: ${cpu_usage}%\", \"tooltip\": \"<img src='/tmp/cpu_usage.png' width='400' height='100'>\", \"class\": \"cpu\"}"
