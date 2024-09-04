#! /bin/bash

if [[ $# -ne 2 ]]
then
    echo -e "\033[31mWrong or missing parameters!!\033[0m"
    echo "Usage: 3_dir_backup.sh <source location> <destination location>"
    exit 1
fi

SRC_DIR=$1
DEST_DIR=$2

if [ ! -d $SRC_DIR ]
then
    echo -e "\033[31mSource directory not found\033[0m"
    exit 1
fi

if [ ! -d $DEST_DIR ]
then
    mkdir $DEST_DIR
fi

TIME=`date +%Y_%m_%d_%H_%M_%S`
DIR_NAME=`echo "$SRC_DIR" | cut -d "." -f 1 | rev | cut -d "/" -f 1 | rev`

cp -R $SRC_DIR $DEST_DIR/$DIR_NAME-$TIME

find $DEST_DIR -type d -mtime +7 -exec rm -rf {} \; 2>/dev/null