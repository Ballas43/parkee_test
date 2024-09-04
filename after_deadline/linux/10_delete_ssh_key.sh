#! /bin/bash

if [[ $# -ne 2 ]]
then
    echo -e "\033[31mWrong or missing parameters!!\033[0m"
    echo "Usage: 10_delete_ssh_key.sh <string to match> <target user>"
    exit 1
fi

STRING="$1"
USER=$2
DIR="/home/$USER/.ssh/authorized_keys"

grep -v $STRING $DIR > tmpfile && mv tmpfile $DIR