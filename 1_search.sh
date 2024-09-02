#! /bin/bash

DIR=$1 #Get directory
EXT=$2 #Get File extension

find $DIR -name "*.$EXT" #Use find command and *wildcard to find all file with extention