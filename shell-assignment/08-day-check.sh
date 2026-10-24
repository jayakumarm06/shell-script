#!/bin/bash

day=$(date "+%A")

if [ "$day" -eq "Saturday" ] OR [ "$day" -eq "Sunday" ];
then
    echo "Weekend! Enjoy your holiday."

elif [ "$day" -eq "Monday" ]; 
then
    echo "Start of the week. Let's go!" 
else
    echo "Weekday. Go to school/work"
fi

