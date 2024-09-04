#! /bin/bash

utilVal=()
sum=0

while true
    do

    IDLE=`top -bn1 | grep %Cpu | cut -d "," -f 4 | awk '{print $(NR)}' | cut -d "." -f 1`
    DATE=`date`

    let UTIL=100-IDLE


    utilVal+=($UTIL)


    if [[ ${#utilVal[@]} == 12 ]]
    then
    
        for ele in ${utilVal[@]}; do
            let sum=sum+ele
        done
        
        len=${#utilVal[@]}
        let avg=sum/len


        echo $avg

        if (( $avg > 75 ))
        then
            echo -e "$DATE\nCPU Usage more than 75%" >> cpu_log.txt
        fi

        unset utilVal
        unset sum

    fi

    sleep 5
done
