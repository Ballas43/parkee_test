#! /bin/bash

while true
    do
    USAGE=`df -h | awk '$NF=="/"{print $5}' | cut -d "%" -f 1`

    if (($USAGE > 80))
    then
        zenity --notification --text="More than 80% of disk is used"
    fi
    
    sleep 60
done