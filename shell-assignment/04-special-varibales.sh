#!/bin/bash

# Print who is running the script
# Print the current directory
# Print the home directory
# Print the PID of the script
# Run sleep 10 in the background and print its PID
# Print a random number between 1–100
# At the end, print how many seconds the script took to run

echo "who is running the script:$USER"
echo "the current directory:$PWD"
echo "the home directory:$HOME"
echo "PID of the script:$$"
sleep 10 &
echo "the background and print its PID:$!"
# num=$(($RANDOM % 100 + 1))
# echo "random number between 1–100:$num"
echo "At the end, print how many seconds the script took to run: $SECONDS seconds"