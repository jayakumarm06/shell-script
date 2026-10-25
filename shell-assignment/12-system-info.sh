#!/bin/bash

# Accepts one argument: a server name (label only)
# Validates that the argument is provided — exit with error if missing
# Defines a function section that prints a heading separator
# Collects and prints:
# Script start time and PID
# Server label (from argument)
# Current user and home directory
# OS information (cat /etc/os-release | grep PRETTY)
# Disk usage (df -h /)
# Memory usage (free -h)
# Uptime
# Logs everything to /tmp/system-info.log
# Prints total script execution time at the end





server_name=$1
if [  -z "$server_name" ]; then
    echo "ERROR:: Atleat one argument is needed........."
    exit 0
fi

section(){

    echo "================================================="

    echo "=======System Info Report — $server_name========="

    echo "================================================="
}


timestamp(){
    date "+%F %T"
}

OS="$(cat /etc/os-release | grep PRETTY | awk -F "=" '{gsub(/"/,"",$2); print $2}'| awk -F '\\(' '{print $1})"
disk="$(df -h / | awk 'NR==2 {print $2 " used of " $3}')"
mem="$(free -h | awk '/^Mem:/ {print $2 " out of " $3}')"
uptime="$(uptime | cut -d "," -f1 | awk '{print $2, " days, "$3}')"
echo "PID:$$"
echo "Started at:$(timestamp)"
echo "User:$USER"
echo "OS:$OS"
echo "Disk (/):$disk"
echo "OS:$mem"
echo "OS:$uptime"
echo "Scripted Completed in $SECONDS seconds"