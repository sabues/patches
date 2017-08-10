#!/bin/bash

FILE="./patchscriptrun.log"

if [ -e $FILE ]
then
    # already executed
    exit 1
else
    echo "First bash script for release 12567 executed here" > $FILE
fi