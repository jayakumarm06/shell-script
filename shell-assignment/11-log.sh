#!/bin/bash

user_id=$(id -u)
success_folder_log="/tmp/script.log"
logs_file="${success_folder_log}"
# R="\e[31m"
# G="\e[32m"
# Y="\e[33m"
# N="\e[0m"

if [ "$user_id" -ne  0 ]; then
   echo "go with sudo root acces.."
   exit 1

fi 


mkdir -p $success_folder_log 
# validate(){

#     if [ $1 -ne 0 ]; then
#         echo -e "${2}... ${R}[FAILURE]${N}"
#         # exit 1
#     else
#         echo -e "${2} .... ${G}[SUCCEED]${N}"
#     fi

# }

ls /tmp/ 1>> $logs_file 
# validate $? "ls /tmp and checks if it.."

# ls /fakedir
# validate $? "ls /fakedir and checks if it.."

