#!/bin/bash

user_id=$(id -u)
success_folder_log="/tmp"
success_logs_file="${success_folder_log}/script.log"
error_logs_file="${success_folder_log}/script-error.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ "$user_id" -ne  0 ]; then
   echo "go with sudo root acces.."
   exit 1

fi 

touch $success_logs_file $error_logs_file

# mkdir -p $success_folder_log 
validate(){

    if [ $1 -ne 0 ]; then
        echo -e "${2}... ${R}[FAILURE]${N}" 2>> $error_logs_file
        exit 1
    else
        echo -e "${2} .... ${G}[SUCCEED]${N}" 
    fi

}

ls /tmpp  
validate $? "search .log folder"
   


  

# ls /fakedir
# validate $? "ls /fakedir and checks if it.."

