#!/bin/bash

echo "all args passed to the script: $@"
echo "Number of args are passed to the script:$*"
echo "first variables pass:$1"
echo "script name:$0"
echo "Realpath: $(realpath)"
echo "who is running current script:$USER"
echo "directory of the current script:$PWD"
echo "Home directory of current user:$HOME"