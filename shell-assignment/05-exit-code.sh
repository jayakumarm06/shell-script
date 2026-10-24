#!/bin/bash
logs_folder="/var/log/shell-assginament"
logs_file="${logs_folder}/${0}.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

# Runs ls /tmp and checks if it succeeded — print SUCCESS or FAILURE
# Runs ls /fakedir and checks — print SUCCESS or FAILURE
# Runs ping -c1 google.com and checks — print Host reachable or Host not reachable
# At the end, exit the script with code 0 if all commands succeeded, or 1 if any failed
mkdir -p $logs_folder



validate(){

    if [ $1 -ne 0 ]; then
        echo  "${2}... ${R}[FAILURE]${N}" &>> $logs_file
        exit 1
    else
        echo "${2} ....${R}[SUCCEED]${N}" &>> $logs_file
    fi

}

ls /tmp
validate $? "ls /tmp and checks if it succeeded/failure"