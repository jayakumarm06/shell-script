#!/bin/bash

server_name=$1
if [  -z "$server_name" ]; then
    echo "ERROR:: Atleat one argument is needed........."
    exit 0
fi