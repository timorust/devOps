#!/bin/bash
number=0
while [ $number -le 100 ]; do
  echo "Enter a number greater than 100:"
  read number
done
echo "You entered $number, which is greater than 100."
