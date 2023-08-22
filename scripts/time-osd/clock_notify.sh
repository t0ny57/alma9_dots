#!/bin/bash

# Fetch the local current date and time
LOCAL_DATETIME=$(date +"%Y-%m-%d %H:%M:%S %Z")

# Fetch the UTC time
UTC_TIME=$(date -u +"%H:%M:%S %Z")

# Display the local date & time and UTC time using notify-send
NOTIFICATION_TEXT="Local: $LOCAL_DATETIME\nUTC:   $UTC_TIME"
notify-send "Current Date & Time" "$NOTIFICATION_TEXT" -i clock -t 10000
