#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "Plse choose sudo access to.."
    exit 1
fi

echo "Proceeding ......"
dnf install nginssssx -y

dnf mysqlkkd -y

echo "end process"