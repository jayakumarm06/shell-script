#!/bin/bash

user_id=$(id -u)
logs_folder="/var/log/shell-assignment"
logs_file="${logs_folder}/${0}.log"

if [ "$user_id" -ne  0 ]; then
   echo "go with sudo root acces.."
   exit 1

fi

mkdir -p $logs_folder

dnf list installed nginx &>> $logs_file
if [ $? -ne  0 ]; then
    echo "GO and Install nginx"
    dnf install nginx -y &>> $logs_file
    echo "nginx install successfully"
else
    echo "nginx is already installed"
    exit 0
fi
