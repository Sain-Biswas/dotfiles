#!/usr/bin/env bash

#    ░█▀█░▀█▀░█▀▄░█▀█░█░░░█▀█░█▀█░█▀▀░░░█▄█░█▀█░█▀▄░█▀▀
#    ░█▀█░░█░░█▀▄░█▀▀░█░░░█▀█░█░█░█▀▀░░░█░█░█░█░█░█░█▀▀
#    ░▀░▀░▀▀▀░▀░▀░▀░░░▀▀▀░▀░▀░▀░▀░▀▀▀░░░▀░▀░▀▀▀░▀▀░░▀▀▀

notifon="󰀝"
notifoff="󰀞"

# Check if any wireless device is blocked
wifi_blocked=$(rfkill list wifi | grep -o "Soft blocked: yes")

if [ -n "$wifi_blocked" ]; then
    rfkill unblock wifi
    notify-send -u low -i "$notifoff" " Airplane" " mode: OFF"
else
    rfkill block wifi
    notify-send -u low -i "$notifon" " Airplane" " mode: ON"
fi
