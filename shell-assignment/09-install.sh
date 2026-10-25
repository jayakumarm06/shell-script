#!/bin/bash

user_id=$(id -u)


if [ "$user_id" -n 0 ]; then
   echo "go with sudo root acces.."
   

fi