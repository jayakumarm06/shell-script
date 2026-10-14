#!/bin/bash

var1=20
var2=40

echo "$var1+$var2"
echo "$(($var1+$var2))"


declare -i COUNT=5
COUNT=COUNT+1
echo $COUNT