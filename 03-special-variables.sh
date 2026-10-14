#!/bin/bash

echo "all args passed to the script: $@"
echo "Number of args are passed to the script:$*"
echo "first variables pass:$1"
echo "script name:$0"
echo "Realpath: $(realpath $0)"