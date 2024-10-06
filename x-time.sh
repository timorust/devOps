#!/bin/bash
echo "Enter number:"
read num

for (( i=1; i<=num; i++ ))
do
  if [ $i -eq 1 ]; then
    echo "Welcome $i time"
  else
    echo "Welcome $i times"
  fi
done
