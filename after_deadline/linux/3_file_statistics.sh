#! /bin/bash

printf "%s %30s %10s %10s\n" "File" "Chars" "Words" "Lines"

for file in ./statistics/*
do
    chars=`cat $file | wc -m`
    words=`cat $file | wc -w`
    lines=`cat $file | wc -l`

    printf "%s %10d %10d %10d\n" $file $chars $words $(($lines+1))
done