#! /usr/bin/env bash

# ░▀█▀░█░█░█▀▀░█▄█░█▀▀░░░█▀▄░█▀▀░█▀▀░█▀▄░█▀▀░█▀▀░█░█░█▀▀░█▀▄
# ░░█░░█▀█░█▀▀░█░█░█▀▀░░░█▀▄░█▀▀░█▀▀░█▀▄░█▀▀░▀▀█░█▀█░█▀▀░█▀▄
# ░░▀░░▀░▀░▀▀▀░▀░▀░▀▀▀░░░▀░▀░▀▀▀░▀░░░▀░▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░▀

# Waybar
killall waybar
pkill waybar

waybar &

# Sway NC
swaync-client -R
swaync-client --reload-config
swaync-client -rs
