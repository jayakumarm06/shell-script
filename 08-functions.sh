#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "Plse choose sudo access to.."
    exit 1
fi

validate(){


if  [ $1 -ne 0 ]; then
    echo "$2...failed"
    exit 1
else
    echo "$2...Success"
fi


}
echo "Proceeding ......"
dnf install nginx -y

validate $? "Nginx Installtion"


dnf install mysql -y

validate $? "mysql Installtion"

echo "still proceeding"