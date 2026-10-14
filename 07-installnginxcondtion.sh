#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "Plse choose sudo access to.."
    exit 1
fi

echo "Proceeding ......"
dnf install nginxxxxx -y

if  [ $? -ne 0 ]; then
    echo "Nginx installation is failed"
    exit 1
else
    echo "Nginx installation is Success"
fi

dnf install mysqlllll -y

if  [ $? -ne 0 ]; then
    echo "mysql installation is failed"
    exit 1
else
    echo "mysql installation is Success"
fi

echo "still proceeding"