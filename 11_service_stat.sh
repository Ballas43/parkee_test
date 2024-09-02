#!/bin/bash

if [[ $# -ne 2 || $2 != "start" && $2 != "stop" && $2 != "stat" ]]
then
    echo -e "\033[31mWrong or missing parameters!!\033[0m"
    echo "Usage: 11_service_stat.sh <service-name> [start | stop | stat]"
    exit 1
fi

SERVICE_NAME=$1
ACTION=$2

if [[ `systemctl list-unit-files $SERVICE_NAME | tail -n 1 | awk {'print $1'}` == 0 ]]; then
    echo -e "\033[31mNo services named $SERVICE_NAME found\033[0m"
    exit 1
fi

if [[ $ACTION == "start" ]]
then
    systemctl start $SERVICE_NAME
    exit 0
elif [[ $ACTION == "stop" ]]
then
    systemctl stop $SERVICE_NAME
    exit 0
else
    systemctl status $SERVICE_NAME
fi
