#!/bin/bash

user_id=$(id -u)


if [ "$user_id" -ne  0 ]; then
   echo "go with sudo root acces.."
   exit 1


fi