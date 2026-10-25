#!/bin/bash


logs_folder="/var/log/shell-assignment"
logs_file="${logs_folder}/${0}.log"


mkdir -p $logs_folder

header(){

    if [ $1 -ne 0 ]; then
        echo "[FAILURE]: ${2}"
    else
        echo "[SUCCESS]: ${2}" 
    fi

}


for package in $@
do
    dnf list installed $package &>> $logs_file
    if [ $? -ne  0 ]; then
        echo "GO and Install $package"
        header $? "$package installation"
        
    else
        echo "$package is already installed"
        
    fi
done