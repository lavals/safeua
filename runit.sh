#!/bin/bash

FILENAME="list.txt"
LINES=$(cat $FILENAME)
for LINE in $LINES
do
    docker run -it --rm alpine/bombardier -c 10 -d 5s -l "$LINE"
done