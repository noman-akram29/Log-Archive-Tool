#!/bin/bash
#

ARCHIVE_DIR="./archives"
LOG_FILES="./archive_log.log"

mkdir -p "$ARCHIVE_DIR"


if [ "$#" -ne 1 ]; then
	echo "Usage: $0 /path/to/logs"
	exit 1
fi

LOG_DIR="$1"

if [ ! -d "$LOG_DIR" ]; then
	echo "Error: Directory --'$LOG_DIR'-- does not exist!"
	exit 2
fi


TIME_STAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_$TIME_STAMP.tar.gz"
ARCHIVE_PATH="$ARCHIVE_DIR/$ARCHIVE_NAME"

tar -czf "$ARCHIVE_PATH" -C "$LOG_DIR" .


if [ $? -eq 0 ]; then
	FILE_SIZE=$(du -h "$ARCHIVE_PATH" | cut -f1)
	echo "$TIME_STAMP - Archived '$LOG_DIR' to '$ARCHIVE_PATH' ($FILE_SIZE)" >> "$LOG_FILES"
	echo "Archive created: $ARCHIVE_PATH"
else
	echo "$TIME_STAMP - Failed to archive the '$LOG_DIR'" >> "$LOG_FILES"
	echo "Error: Failed to create archive!"
	exit 3
fi
