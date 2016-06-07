#!/bin/sh

cd work

LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse @{u})
BASE=$(git merge-base @ @{u})

cd ..

if [ $LOCAL = $REMOTE ]; then
    echo "Up-to-date" > test.tmp
elif [ $LOCAL = $BASE ]; then
    echo "Need to pull" > test.tmp
elif [ $REMOTE = $BASE ]; then
    echo "Need to push" > test.tmp
else
    echo "Diverged" > test.tmp
fi
#read -p "Press [Enter] key"
