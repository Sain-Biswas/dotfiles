#! /usr/bin/env bash

# ░█▀▀░█▀▀░█▀▄░█▀▀░█▀▀░█▀█░█▀▀░█░█░█▀█░▀█▀░░░█░█░▀█▀░▀█▀░█░░░▀█▀░▀█▀░█░█
# ░▀▀█░█░░░█▀▄░█▀▀░█▀▀░█░█░▀▀█░█▀█░█░█░░█░░░░█░█░░█░░░█░░█░░░░█░░░█░░░█░
# ░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░▀░▀▀▀░░▀░░░░▀▀▀░░▀░░▀▀▀░▀▀▀░▀▀▀░░▀░░░▀░

# save the current working directory
current_directory="$(pwd)"

# mapping options and icons
window=""
full=""
region=""
copy="󰆏"

# define final location of the saved screenshot
save_dir="Pictures/Screenshots"
save_file=$(date +'%y%m%d_%Hh%Mm%Ss_screenshot.png')
full_path="$save_dir/$save_file"

# create the screenshot directory if not available
cd ~
mkdir -p "$save_dir"

# move to source directory
cd "$current_directory"

# rofi command to get the screenshot mode
screenshot_command(){
        echo -e "$window\n$full\n$region\n$copy" | rofi -dmenu -theme ~/dotfiles/.config/rofi/power-menu.rasi -theme-str "listview { columns: 4; }" -theme-str "window { width: 15%; }" || exit 0
}

# save the mode
chosen="$(screenshot_command)"

# action
case ${chosen} in
    $window)
        hyprshot -s -m window -o "$HOME/$save_dir" -f "$save_file";
        ;;
    $full)
        hyprshot -z -s -m output -o "$HOME/$save_dir" -f "$save_file"
        ;;
    $region)
        hyprshot -z -s -m region -o "$HOME/$save_dir" -f "$save_file"
        ;;
    $copy)
        hyprshot -m window -m active --clipboard-only
        ;;
    *)
        exit 1
        ;;
esac
