#!/bin/bash


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
source_dir=$1
days=${2:-14} # if user is not passing days,we will take 14 days as deaful


usage(){

    echo -e "${R}USAGE:: $0 [SOURCE_DIR] [days(optinal,default to 14 days)]${N}"
    exit 1
}

#missing parameter
if [ -z "$source_dir" ]; then

    echo "ERROR:: Missing Paramters"
    usage

fi

#first check the dir exist or not

if [ ! -d "$source_dir" ]; then

    echo -e "${R}ERROR:: $source_dir  doesnt exit${N}"

fi