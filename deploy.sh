#!/bin/bash

if [ $# -ne 2 ]; then
    echo "************************************** Missing arguments. Usage : deploy.sh [version] [message]"
else
    VERSION=$1
    MESSAGE=$2
    echo "************************************** Commit changes '$MESSAGE' **************************************"
    git add .
    # echo `git status`
    git commit -m "$MESSAGE"
    echo "************************************** Adding tag $VERSION and push to Github **************************************"
    npm version $VERSION -m "Adding version $VERSION"
    git push
    git push --tags
fi