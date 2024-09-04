#!/bin/bash

if [[ $# -ne 2 ]]
then
    echo -e "\033[31mWrong or missing parameters!!\033[0m"
    echo "Usage: 8_ssh_check.sh <target username> <target server>"
    exit 1
fi


USER=$1
IP=$2

ssh -q $USER@$IP 'exit 0'

ERR_CODE=$?

if (( $ERR_CODE != 0 ))
then
        echo "SSH Failed"
else
        echo "SSH Successful"
fi
