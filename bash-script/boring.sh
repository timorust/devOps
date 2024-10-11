#!/bin/bash
while true
do
  echo "You boring? (1=Yes; 2=No)"
  read answer
  if [ "$answer" -eq 2 ]; then
    echo "you choice:=> no => Program end."
    break
  elif [ "$answer" -ne 1 ] && [ "$answer" -ne 2 ]; then
    echo "uncorrected => enter varieble number..."
  fi
done

