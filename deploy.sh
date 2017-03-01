#!/bin/bash

if [ -z $1 ]
    then
        echo "************************************** Missing 'tag' argument. Usage : deploy.sh [tag] [message]"
else
    TAG=$1
    MESSAGE=$2
    echo "************************************** Adding tag $1 **************************************"
    echo $1
fi
