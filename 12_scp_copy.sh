#! /bin/bash

FILE=$1
USERNAME=$2
IP=$3

scp $FILE $USERNAME@$IP:~