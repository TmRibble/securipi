#!/bin/bash

output=$(git pull)

echo $output

if [[ $output != "Already up to date." ]]; then
    echo "update"
    sleep 5
    java -jar ./securipi.jar
else
	echo "no update"
fi
