#! /usr/bin/env bash

# ░█▀█░█▀█░█░█░█▀▀░█▀▄░░░█▄█░█▀▀░█▀█░█░█░░░█░█░▀█▀░▀█▀░█░░░▀█▀░▀█▀░█░█
# ░█▀▀░█░█░█▄█░█▀▀░█▀▄░░░█░█░█▀▀░█░█░█░█░░░█░█░░█░░░█░░█░░░░█░░░█░░░█░
# ░▀░░░▀▀▀░▀░▀░▀▀▀░▀░▀░░░▀░▀░▀▀▀░▀░▀░▀▀▀░░░▀▀▀░░▀░░▀▀▀░▀▀▀░▀▀▀░░▀░░░▀░

# mapping options and icons
hibernate="󰖔"

shutdown=""

reboot=""

lock="󰌾"

suspend=""

logout="󰍃"

yes=""

no=""


# run a rofi command for selecting action related to the action to be taken
powermenu_command(){
    echo -e "$lock\n$hibernate\n$logout\n$suspend\n$reboot\n$shutdown" | rofi -dmenu -theme ~/dotfiles/.config/rofi/power-menu.rasi || exit 0
}

# run a rofi command for confirming the action selected
powermenu_exit(){
    echo -e "$yes\n$no" | rofi -dmenu -theme ~/dotfiles/.config/rofi/power-menu.rasi -theme-str "listview { columns: 2; }" -theme-str "window { width: 9%; }" || exit 0
}

# Execute Command
run_cmd() {
	selected="$(powermenu_exit)"
	if [[ "$selected" == "$yes" ]]; then
		if [[ $1 == '--shutdown' ]]; then
			systemctl poweroff
		elif [[ $1 == '--reboot' ]]; then
			systemctl reboot
		elif [[ $1 == '--hibernate' ]]; then
			systemctl hibernate
		elif [[ $1 == '--suspend' ]]; then
			hyprlock -f || systemctl suspend
		elif [[ $1 == '--logout' ]]; then
			hyprctl dispatch exit 0
		fi
	else
		exit 0
	fi
}

# Actions
chosen="$(powermenu_command)"
case ${chosen} in
    $shutdown)
		run_cmd --shutdown
        ;;
    $reboot)
		run_cmd --reboot
        ;;
    $hibernate)
		run_cmd --hibernate
        ;;
    $lock)
		pidof hyprlock || hyprlock
        ;;
    $suspend)
		run_cmd --suspend
        ;;
    $logout)
		run_cmd --logout
        ;;
esac
