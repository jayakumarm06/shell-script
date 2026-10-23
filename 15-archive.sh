#!/bin/bash


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
source_dir=$1
dest_dir=$2
days=${3:-14} # if user is not passing days,we will take 14 days as deaful

usage(){

    echo -e "${R}USAGE:: $0 [SOURCE_DIR] [DEST_DIR] [days(optinal,default to 14 days)]${N}"
    exit 1
}


if [ -z "$source_dir" ] || [ -z "$dest_dir" ]; then
  
  echo "Either source or destination directory is missing"
  usage

fi

if [ ! -d "$source_dir"];then
 
  echo "source directory:  $source_dir does not exist"

fi 
if [ ! -d "$dest_dir"];then
 
  echo "destination directory:  $dest_dir does not exist"

fi 


