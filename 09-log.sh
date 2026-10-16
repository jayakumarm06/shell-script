#!/bin/bash

user_id=$(id -u)

logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"



if [ $user_id -ne 0 ]; then
    echo "Plse choose sudo access to.."
    exit 1
fi

mkdir -p $logs_folder
touch "$logs_file"




validate(){


if  [ $1 -ne 0 ]; then
    echo "${2}...FAILED" 
    exit 1
else
    echo "${2}...SUCCESS" 
fi


}


dnf install nginx -y &>> log_file

validate $? "Nginx Installtion"


dnf install mysqlss -y &>> log_file

validate $? "mysql Installtion"

