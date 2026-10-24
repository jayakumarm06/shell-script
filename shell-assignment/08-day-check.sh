#!/bin/bash

day=$(date "+%A")
echo $day
if [[ "$day" -eq "Saturday" ]] || [[ "$day" -eq "Sunday" ]];then
    echo "Weekend! Enjoy your holiday."

elif [[ "$day" -eq "Monday" ]]; then
    echo "Start of the week. Let's go!" 
else
    echo "Weekday. Go to school/work"
fi

echo "END"