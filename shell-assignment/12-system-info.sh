#!/bin/bash

server_name=$1
if [[ "$server_name" -ne 0 ]]; then
    echo "Atleat one argument is needed........."
    exit 0
fi