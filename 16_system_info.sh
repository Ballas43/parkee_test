#! /bin/bash

HOST=`uname -n` #check hostname
KERNEL=`uname -r` #check kernel version
USERS_COUNT=`users | wc -w` #check users_count
OS_VER=`cat /etc/os-release | awk -F= '$1=="PRETTY_NAME" { print $2 ;}'` #get os info from /etc/os_release then using awk to get key name and the value
DATE=`date` #get date

echo -e "Time : $DATE\nHostname : $HOST\nKernel Version : $KERNEL\nOS Version : $OS_VER\nLogged-in User : $USERS_COUNT"