#! /bin/bash

if [[ $# -ne 2 ]]
then
    echo -e "\033[31mWrong or missing parameters!!\033[0m"
    echo "Usage: 2_compress.sh <directory> <archive location>"
    exit 1
fi

DIR=$1 #Get Dir
OUT=$2 #Get Out Location

if [ ! -d $DIR ]
then
    echo -e "\033[31mDirectory not found\033[0m"
    exit 1
fi

FILE_NAME=`basename $DIR` #Get folder name using basename from DIR
OUT_DIR="$OUT/$FILE_NAME.tar.gz" #Create out dir from out dir and folder name then add .tar.gz

cd "$DIR" && tar -cf "$OUT_DIR" * #Change dir to the specified dir and use tar command to compress the directory