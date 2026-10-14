#!/bin/bash

echo "Enter a marks of a student:"
read marks

if [ $marks -lt 33 ]; then
    echo "fail"
else if [ $marks -lt 50 ]; then
    echo "third class"
else if [ $marks -lt 60 ]; then
    echo "second class"
else if [ $marks -lt 75 ]; then
    echo "first class"
else
    echo "distinction"