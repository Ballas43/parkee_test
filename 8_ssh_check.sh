#!/bin/bash

HOST=$1
echo "> $HOST..."

ssh -q -o BatchMode=yes  -o StrictHostKeyChecking=no $HOST 'exit 0'
RCODE=$?
if [ $RCODE -ne 0 ]; then
        echo "  [!] Unable to ssh on: $HOST"
else
        echo "OK"
fi
