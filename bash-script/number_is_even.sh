#!/bin/bash

for number in {1..10}
do
    if [ $((number % 2)) -eq 0 ]; then
        echo "$number"
    fi
done
