#! /bin/bash

DIR=$1 #Get Dir
OUT=$2 #Get Out Location
FILE_NAME=`basename $DIR` #Get folder name using basename from DIR
OUT_DIR="$OUT/$FILE_NAME.tar.gz" #Create out dir from out dir and folder name then add .tar.gz

cd "$DIR" && tar -cf "$OUT_DIR" * #Change dir to the specified dir and use tar command to compress the directory