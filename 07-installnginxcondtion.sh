#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ]; then
    echo "Plse choose sudo access to.."

dnf install nginx -y