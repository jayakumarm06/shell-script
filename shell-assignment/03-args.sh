#!/bin/bash

# Print: User <username> is from <country>
# Print total number of arguments passed
# Print all arguments passed
# Print the script name
username=$1
country=$2

echo "User :$1 is from $2"
echo "total number of arguments passed:$#"
echo "number of arguments passed:$*"