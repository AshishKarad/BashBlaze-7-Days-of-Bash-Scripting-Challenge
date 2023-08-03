#!/bin/bash

if [ $# -ne 1 ]; then                       
    echo "Usage: $0 <backup_directory>"
    exit 1
fi

source_dir="/home/ashish/"            
backup_dir="$1"

echo "Backup script started..."
