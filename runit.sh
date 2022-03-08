#!/bin/bash


FILENAME="list.txt"
wget -O  $FILENAME https://raw.githubusercontent.com/lavals/safeua/main/list.txt

LINES=$(cat $FILENAME)
for LINE in $LINES
do
    docker run -it --rm alpine/bombardier -c 10 -d 5s "$LINE"
done