#! /bin/bash

if [[ $# -ne 1 ]]
then
    echo -e "\033[31mWrong or missing parameters!!\033[0m"
    echo "Usage: 6_create_ssh.sh <key location>"
    exit 1
fi

DIR=$1

if [ ! -d $DIR ]
then
    mkdir $DIR
fi

ssh-keygen -t rsa -f "$DIR/ssh-key" -N ""