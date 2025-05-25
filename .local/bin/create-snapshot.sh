#!/bin/bash
if [ "$(id -u)" -ne 0 ]; then
    # If not running as root, re-run with sudo
    exec sudo "$0" "$@"
fi

DESCRIPTION="Manual snapshot - $(date +'%Y-%m-%d %H:%M:%S')"
SNAPSHOT_OUTPUT=$(snapper -c root create --description "$DESCRIPTION")
SNAPSHOT_NUM=$(echo "$SNAPSHOT_OUTPUT" | grep -oP 'Created snapshot \K\d+')

# Get the current user for notification
USER_NAME=$(who | awk '{print $1}' | head -n1)
DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u $USER_NAME)/bus"

# Send notification as the user
sudo -u $USER_NAME DBUS_SESSION_BUS_ADDRESS="$DBUS_SESSION_BUS_ADDRESS" notify-send \
    "Snapper" \
    "Snapshot #$SNAPSHOT_NUM created successfully" \
    -i "dialog-information" \
    -u normal
