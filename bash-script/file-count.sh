#!/bin/bash
echo "enter directory path:"
read dir_path

if [ -d "$dir_path" ]; then
  file_count=$(ls -1 "$dir_path" | wc -l)
  echo "in directiory $dir_path => $file_count files."
else
  echo "directoryt not found."
fi
