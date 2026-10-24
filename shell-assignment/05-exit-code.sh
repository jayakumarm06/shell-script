#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

# Runs ls /tmp and checks if it succeeded — print SUCCESS or FAILURE
# Runs ls /fakedir and checks — print SUCCESS or FAILURE
# Runs ping -c1 google.com and checks — print Host reachable or Host not reachable
# At the end, exit the script with code 0 if all commands succeeded, or 1 if any failed
validate1(){

    if [ $1 -ne 0 ]; then
        echo -e "${2}... ${R}[not reachable]${N}"
        exit 1
    else
        echo -e "${2} .... ${G}[reachable]${N}"
    fi

}



validate(){

    if [ $1 -ne 0 ]; then
        echo -e "${2}... ${R}[FAILURE]${N}"
        exit 1
    else
        echo -e "${2} .... ${G}[SUCCEED]${N}"
    fi

}

ls /tmp
validate $? "ls /tmp and checks if it.."

ls /fakedir
validate $? "ls /fakedir and checks if it.."

reac=ping -c1 google.com
validate1 $? "Host "