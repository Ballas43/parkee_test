#! /bin/bash

if [[ $# -ne 3 ]]
then
    echo -e "\033[31mWrong or missing parameters!!\033[0m"
    echo "Usage: 7_ssh_copy.sh <pub key location> <target user> <target server>"
    exit 1
fi


KEY=$1
USERNAME=$2
IP=$3

ssh-copy-id -i $KEY $USERNAME@$IP