#! /bin/bash

DIR=$1

if [ ! -d $DIR ]
then
    mkdir $DIR
fi

ssh-keygen -f "$DIR/ssh-key" -N ""