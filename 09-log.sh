#!/bin/bash

user_id=$(id -u)

logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"



if [ $user_id -ne 0 ]; then
    echo "Plse choose sudo access to.."
    exit 1
fi

mkdir -p $logs_folder

echo "script started execution at $(date +"%F %T")" &>> $logs_file

validate(){


if  [ $1 -ne 0 ]; then
    echo "${2}...FAILED" | tee -a $logs_file
    exit 1
else
    echo "${2}...SUCCESS" | tee -a $logs_file
fi


}


dnf install nginx -y &>> $logs_file

validate $? "Nginx Installtion"


dnf install mysqlss -y &>> $logs_file

validate $? "mysql Installtion"

echo "script started completed at $(date +"%F %T")" &>> $logs_file