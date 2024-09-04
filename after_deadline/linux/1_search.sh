#! /bin/bash

if [[ $# -ne 2 ]]
then
    echo -e "\033[31mWrong or missing parameters!!\033[0m"
    echo "Usage: 1_search.sh <directory> <extension>"
    exit 1
fi

DIR=$1 #Get directory
EXT=$2 #Get File extension

if [ ! -d $DIR ]
then
    echo -e "\033[31mDirectory not found\033[0m"
    exit 1
fi


find $DIR -name "*.$EXT" #Use find command and *wildcard to find all file with extention