#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "Plse choose sudo access to.."
fi

echo "Proceeding ......"
dnf install nginx -y