#!/bin/bash

DIR_TO_MONITOR="/root/script-project/log-directory"

LOG_FILE="/root/script-project/log_file.log"

SIZE=$(du -sh $DIR_TO_MONITOR | awk '{print $1}')
TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

echo "$TIMESTAMP - area in directory:=>  $SIZE" >> $LOG_FILE
