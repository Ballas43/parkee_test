#! /bin/bash

if [[ $# -ne 2 ]]
then
    echo -e "\033[31mWrong or missing parameters!!\033[0m"
    echo "Usage: 9_append_ssh_key.sh <public key location> <target user>"
    exit 1
fi

KEY=$1
USER=$2

if [ ! -d /home/$USER/.ssh ]
then
    mkdir /home/$USER/.ssh
    touch /home/$USER/.ssh/authorized_keys
fi

if [ ! -e /home/$USER/.ssh/authorized_keys ]
then
    touch /home/$USER/.ssh/authorized_keys
fi

cat $KEY >> /home/$USER/.ssh/authorized_keys