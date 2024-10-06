#!/bin/bash
echo "Enter you name:"
read your_name
echo "Enter good friend name:"
read friend_name

if [ "$your_name" = "$friend_name" ]; then
  echo "Upps! same name!"
else
  echo "defferent name."
fi
