#!/bin/bash
# Script to connect to Wi-Fi network "SraTek"
# Place this file in your home folder and make it executable.

SSID="SraTek"
PASSWORD="password"

nmcli device wifi connect "$SSID" password "$PASSWORD"

if [ $? -eq 0 ]; then
    notify-send "Wi-Fi Connected" "Successfully connected to $SSID ✅"
    console.log("Connected to $SSID")
else
    notify-send "Wi-Fi Connection Failed" "Could not connect to $SSID ❌"
    console.error("Failed to connect to $SSID")
    exit 1
fi
