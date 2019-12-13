#!/bin/bash
source config.sh
export FILENAME="slack_export_$(date +"%Y_%m_%d_%Hh%Mm%Ss")"
python slack_export.py --token $MY_SLACK_TOKEN --groups $MY_GROUPS --zip exports/$FILENAME
aws s3 --profile=$AWS_PROFILE_NAME cp "exports/${FILENAME}.zip" "${BACKUP_S3_URL}/${FILENAME}.zip"
