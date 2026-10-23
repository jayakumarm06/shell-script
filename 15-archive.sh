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

if [ ! -d "$source_dir" ];then
 
  echo "source directory:$source_dir does not exist"

fi 
if [ ! -d "$dest_dir" ];then
 
  echo "destination directory:$dest_dir does not exist"

fi 

echo "Scannig files older than $days to delted in $source_dir"
files_archive=$(find $source_dir -name "*.log" -type f -mtime +$days)


if [ -z "$files_archive" ]; then
    echo -e "No log files founs older than $days days"
    exit 0

fi

timestamp=$(date +%Y-%m-%d-%H-%M-%S)

file_name="$dest_dir/logs-$timestamp.tar.gz"

tar -czf $file_name $files_archive
if [ $? -ne 0 ]; then
    echo "logs archive is failed"
    exit 1
else
    echo "logs are archive: $file_name"
    while IFS= read -r line
    do
        echo "File is going to be deleted: $line"
        rm -f $line
        echo "file deleted: $line"
    done <<< $files_archive

fi
