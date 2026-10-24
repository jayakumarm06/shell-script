#!/bin/bash

# Runs ls /tmp and checks if it succeeded — print SUCCESS or FAILURE
# Runs ls /fakedir and checks — print SUCCESS or FAILURE
# Runs ping -c1 google.com and checks — print Host reachable or Host not reachable
# At the end, exit the script with code 0 if all commands succeeded, or 1 if any failed
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"



validate(){

    if [ $1 -ne 0 ]; then
        echo -e "${2}... ${R}[FAILURE]${N}"
    else
        echo -e "${2} .... ${R}[SUCCEED]${N}"
    fi

}

ls /tmp
validate $?,"ls /tmp and checks if it succeeded/failure"