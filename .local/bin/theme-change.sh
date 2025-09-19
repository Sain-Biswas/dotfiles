#! /usr/bin/env bash

#    ░▀█▀░█░█░█▀▀░█▄█░█▀▀░░░░░░░░░█▀▀░█░█░█▀█░█▀█░█▀▀░█▀▀
#    ░░█░░█▀█░█▀▀░█░█░█▀▀░░░▄▄▄░░░█░░░█▀█░█▀█░█░█░█░█░█▀▀
#    ░░▀░░▀░▀░▀▀▀░▀░▀░▀▀▀░░░░░░░░░▀▀▀░▀░▀░▀░▀░▀░▀░▀▀▀░▀▀▀

# Directory containing wallpapers
WALL_DIR="$HOME/dotfiles/wallpapers"

# wallpaper cache directory
CACHE_DIR="${HOME}/.cache/rofi-wallpaper/"

# Current working Directory
CWD="$(pwd)"

# Create cache dir if not exists
if [ ! -d "${CACHE_DIR}" ] ; then
        mkdir -p "${CACHE_DIR}" || exit
fi

cd "$WALL_DIR" || exit

# Handle spaces in filenames
IFS=$'\n'

# Monitor size calculations
PHYSICAL_MONITOR_SIZE=16
MONITOR_RES=$(hyprctl monitors |grep -A2 Monitor |head -n 2 |awk '{print $1}' | grep -oE '^[0-9]+')
MONITOR_RES=$((($MONITOR_RES / 6)))

# Convert images in directory and save to cache dir
for IMAGEN in "$WALL_DIR"/*.{jpg,jpeg,png,webp}; do
    if [ -f "$IMAGEN" ]; then
        NOMBRE_ARCHIVO=$(basename "$IMAGEN")
			if [ ! -f "${CACHE_DIR}/${NOMBRE_ARCHIVO}" ] ; then
			convert -strip "$IMAGEN" -thumbnail 1024x576^ -gravity center -extent 1024x576 "${CACHE_DIR}/${NOMBRE_ARCHIVO}"
			fi
    fi
done

# Grab the user selected wallpaper
SELECTED_WALL="$(find "${WALL_DIR}"  -maxdepth 1  -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.webp" \) -exec basename {} \; | sort | while read -r A ; do  echo -en "$A\x00icon\x1f""${CACHE_DIR}"/"$A\n" ; done | rofi -x11 -dmenu -theme "${HOME}/dotfiles/.config/rofi/wallpaper-selector.rasi" -theme-str "element-icon{size:${MONITOR_RES}px;}")"
SELECTED_WALL_PATH="$HOME/dotfiles/wallpapers/$SELECTED_WALL"

# If selected wallpaper exist, pass to wall-apply
if [ -z "$SELECTED_WALL" ]; then
    cd "$CWD" || exit 1
    exit 1
fi

theme_change_scheme(){
    echo -e "wallpaper\nrose-pine" | rofi -dmenu -theme ~/dotfiles/.config/rofi/power-menu.rasi -theme-str "listview { columns: 2; }" -theme-str "window { width: 30%; }" || exit 1
}

scheme="$(theme_change_scheme)"

if [ -z "$scheme" ]; then
    cd "$CWD" || exit 1
    exit 1
fi

# rofi command to get the color scheme to use for theme involving text
matugen image "$SELECTED_WALL_PATH"

sleep 0.2

case ${scheme} in
    "wallpaper")
        wal --cols16 -i "$SELECTED_WALL_PATH"
        ;;
    "rose-pine")
        wal --cols16 -i "$SELECTED_WALL_PATH" --theme ~/.config/wal/themes/rose-pine.json
        ;;
esac

cat ~/.cache/wal/colors-kitty.conf > ~/dotfiles/.config/kitty/colors.conf

# Go back to starting Directory
cd "$CWD" || exit 0
