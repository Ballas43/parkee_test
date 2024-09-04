#! /bin/bash

if [[ $# -ne 3 ]]
then
    echo -e "\033[31mWrong or missing parameters!!\033[0m"
    echo "Usage: 12_scp_copy.sh <file location> <target username> <target server>"
    exit 1
fi


FILE=$1
USERNAME=$2
IP=$3

scp $FILE $USERNAME@$IP:~