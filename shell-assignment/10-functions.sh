#!/bin/bash

user_id=$(id -u)
logs_folder="/var/log/shell-assignment"
logs_file="${logs_folder}/${0}.log"

if [ "$user_id" -ne  0 ]; then
   echo "go with sudo root acces.."
   exit 1

fi
mkdir -p $logs_folder

header(){

    if [ $1 -ne 0 ]; then
        echo "FAILURE: ${2}"
    else
        echo "SUCCESS: ${2}" 
    fi

}


for package in $*
do
    dnf list installed $package &>> $logs_file
    if [ $? -eq  0 ]; then
        dnf list installed $package &>> $logs_file
        header $? "$package is already installed"
        
    else
      
        header $? "$package installation failed"
    fi
done