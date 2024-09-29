#!/bin/bash

BACKUP_DIR="/root/script-project/backup"       # תיקיית הגיבוי
SOURCE_DIR="/home/git-conflict-exercise"     # התיקייה שממנה נבצע גיבוי
LOG_DIR="/var/log/backup_logs"                 # תיקיית הלוגים
LOG_FILE="$LOG_DIR/backup.log"                 # קובץ הלוג
MAX_USAGE=80                                   # אחוז השימוש המרבי בדיסק

# בדיקה אם התיקייה של המקור קיימת
if [[ ! -d "$SOURCE_DIR" ]]; then
  echo "Error: Source directory not found."
  exit 1
fi

# בדיקה אם תיקיית הגיבוי קיימת, ואם לא – יצירתה
if [[ ! -d "$BACKUP_DIR" ]]; then
  echo "Creating backup directory: $BACKUP_DIR"
  mkdir -p "$BACKUP_DIR"
fi

# בדיקה אם תיקיית הלוגים קיימת, ואם לא – יצירתה
if [[ ! -d "$LOG_DIR" ]]; then
  echo "Creating log directory: $LOG_DIR"
  mkdir -p "$LOG_DIR"
fi

# פונקציה לרישום הודעות ללוג
log_message() {
  local MESSAGE="$1"
  echo "$(date '+%Y-%m-%d %H:%M:%S') : $MESSAGE" >> "$LOG_FILE"
}

# פונקציה לבדיקת שימוש בדיסק
check_disk_usage() {
  local USAGE=$(df -h | grep "/dev/sda1" | awk '{print $5}' | sed 's/%//g')
  if [[ "$USAGE" -ge "$MAX_USAGE" ]]; then
    log_message "Disk usage exceeded $MAX_USAGE%. Starting cleanup."
    cleanup_files
  else
    log_message "Disk usage is $USAGE%. No cleanup required."
  fi
}

# פונקציה לניקוי קבצים ישנים מתיקיית הגיבוי (יותר מ-30 ימים)
cleanup_files() {
  find "$BACKUP_DIR" -type f -mtime +30 -exec rm {} \;
  log_message "Deleted backup files older than 30 days."
}

# פונקציה לביצוע גיבוי
backup_files() {
  log_message "Backup process started."
  tar -czf "$BACKUP_DIR/backup_$(date '+%Y%m%d').tar.gz" "$SOURCE_DIR"
  log_message "Backup completed successfully."
}

# התחלת רישום לוגים והרצת פונקציות
log_message "=== Starting script ==="
backup_files
check_disk_usage
log_message "=== Script finished ==="

exit 0
