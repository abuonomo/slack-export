#!/bin/bash
source config.sh
export FILENAME="slack_export_$(date +"%Y_%m_%d_%Hh%Mm%Ss")"
export S3_LOC="${BACKUP_S3_URL}/${FILENAME}.zip"
python slack_export.py --token $MY_SLACK_TOKEN --groups $MY_GROUPS --zip exports/$FILENAME
aws s3 cp "exports/${FILENAME}.zip" $S3_LOC 
