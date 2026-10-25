#!/bin/bash

user_id=$(id -u)
logs_folder="/var/log/shell-assignment"
logs_file="${logs_folder}/${0}.log"

if [ "$user_id" -ne  0 ]; then
   echo "go with sudo root acces.."
   exit 1

fi

mkdir -p $logs_folder
for package in $@
do
    dnf list installed $package &>> $logs_file
    if [ $? -ne  0 ]; then
        echo "GO and Install $package"
        dnf install $package -y &>> $logs_file
        echo "$package install successfully"
    else
        echo "$package is already installed"
        exit 0
    fi
done