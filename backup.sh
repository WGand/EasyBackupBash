#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory_to_backup> <destination_directory>"
    exit 1
fi

BACKUP_DIRECTORY=$1
DESTINATION_DIRECTORY=$2
DATE=$(date +"%Y%m%d")

tar -czvf "$DESTINATION_DIRECTORY/backup_$DATE.tar.gz" "$BACKUP_DIRECTORY"

if [ $? -eq 0 ]; then
    echo "Backup created successfully in $DESTINATION_DIRECTORY"
else
    echo "Error creating the backup"
    exit 1
fi
