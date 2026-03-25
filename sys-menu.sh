#!/bin/bash

# Simple power menu using fuzzel
choice=$(echo -e "Shutdown\nReboot\nLock\nSuspend" | fuzzel -d -p "Action: " -l 4)

case "$choice" in
    Lock) swaylock -f -c 1a1b26 ;;
    Suspend) systemctl suspend ;;
    Shutdown) poweroff ;;
    Reboot) reboot ;;
esac
