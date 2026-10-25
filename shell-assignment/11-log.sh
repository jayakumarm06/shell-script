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
        echo -e "${2}... ${R}[FAILURE]${N}and passed to thsi folder $error_logs_file" 
        # exit 1
    else
        echo -e "${2} .... ${G}[SUCCEED]${N} and passed to thsi folder $success_logs_file" 
    fi

}

ls /tmp 1>> $success_logs_file 2>> $error_logs_file
validate $? "search .log folder"
   

ls /fakedir 1>> $success_logs_file 2>> $error_logs_file
validate $? "no dirfake"

date 1>> $success_logs_file 2>> $error_logs_file
validate $? "check date and time.."

echo "=======Success logfiles===================="
cat $success_logs_file
echo "==============END=========================="
echo "=======Error logfiles======================"
cat $error_logs_file
echo "==============END=========================="