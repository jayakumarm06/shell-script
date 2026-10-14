#!/bin/bash

echo "all args passed to the script: $@"
echo "Number of args are passed to the script:$*"
echo "first variables pass:$1"
echo "script name:$0"
echo "Realpath: $(realpath $0)"
echo "who is running current script:$USER"
echo "directory of the current script:$PWD"
echo "Home directory of current user:$HOME"
echo "PID of current script:$$"
sleep 10 &
echo "PID of command running in background now:$!"
wait $! # script waits untill $! command complete
echo "Line Number: $LINENO"
echo "Previous command exit status:$?"
echo "total time executed for this script:$SECONDS"