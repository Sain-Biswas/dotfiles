#! /usr/bin/env bash

# ░█▀▀░█▀█░█░░░█▀█░█▀▄░░░█▀█░▀█▀░█▀▀░█░█░█▀▀░█▀▄░░░█░█░▀█▀░▀█▀░█░░░▀█▀░▀█▀░█░█
# ░█░░░█░█░█░░░█░█░█▀▄░░░█▀▀░░█░░█░░░█▀▄░█▀▀░█▀▄░░░█░█░░█░░░█░░█░░░░█░░░█░░░█░
# ░▀▀▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░░░▀░░░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░▀░░░▀▀▀░░▀░░▀▀▀░▀▀▀░▀▀▀░░▀░░░▀░

colorpicker_rgb(){
    hyprpicker | pastel format rgb | wl-copy
    sleep 0.2
    magick -size 64x64 xc:"$(wl-paste)" /tmp/color.png
    notify-send "RGB color picked | Hyprpicker" "$(wl-paste)" -i /tmp/color.png -a "Hyprpicker"
    rm /tmp/color.png
    exit 0
}


colorpicker_hex(){
    hyprpicker | pastel format hex | wl-copy
    sleep 0.2
    magick -size 64x64 xc:"$(wl-paste)" /tmp/color.png
    notify-send "HEX color picked | Hyprpicker" "$(wl-paste)" -i /tmp/color.png -a "Hyprpicker"
    rm /tmp/color.png
    exit 0
}


colorpicker_hsv(){
    hyprpicker | pastel format hsv | wl-copy
    sleep 0.2
    magick -size 64x64 xc:"$(wl-paste)" /tmp/color.png
    notify-send "HSV color picked | Hyprpicker" "$(wl-paste)" -i /tmp/color.png -a "Hyprpicker"
    rm /tmp/color.png
    exit 0
}

colorpicker_hsl(){
    hyprpicker | pastel format hsl | wl-copy
    sleep 0.2
    magick -size 64x64 xc:"$(wl-paste)" /tmp/color.png
    notify-send "HSL color picked | Hyprpicker" "$(wl-paste)" -i /tmp/color.png -a "Hyprpicker"
    rm /tmp/color.png
    exit 0
}

colorpicker_lch(){
    hyprpicker | pastel format lch | wl-copy
    sleep 0.2
    magick -size 64x64 xc:"$(wl-paste)" /tmp/color.png
    notify-send "LCH color picked | Hyprpicker" "$(wl-paste)" -i /tmp/color.png -a "Hyprpicker"
    rm /tmp/color.png
    exit 0
}

colorpicker_lab(){
    hyprpicker | pastel format lab | wl-copy
    sleep 0.2
    magick -size 64x64 xc:"$(wl-paste)" /tmp/color.png
    notify-send "LAB color picked | Hyprpicker" "$(wl-paste)" -i /tmp/color.png -a "Hyprpicker"
    rm /tmp/color.png
    exit 0
}

colorpicker_oklab(){
    hyprpicker | pastel format oklab | wl-copy
    sleep 0.2
    magick -size 64x64 xc:"$(wl-paste | pastel format hex)" /tmp/color.png
    notify-send "okLAB color picked | Hyprpicker" "$(wl-paste)" -i /tmp/color.png -a "Hyprpicker"
    rm /tmp/color.png
    exit 0
}

colorpicker_luminance(){
    hyprpicker | pastel format luminance | wl-copy
    sleep 0.2
    notify-send "Luminance color picked | Hyprpicker" "$(wl-paste)" -a "Hyprpicker"
    rm /tmp/color.png
    exit 0
}

colorpicker_brightness(){
    hyprpicker | pastel format brightness | wl-copy
    sleep 0.2
    notify-send "Brightness color picked | Hyprpicker" "$(wl-paste)" -a "Hyprpicker"
    rm /tmp/color.png
    exit 0
}

colorpicker_name(){
    hyprpicker | pastel format name | wl-copy
    sleep 0.2
    magick -size 64x64 xc:"$(wl-paste | pastel format hex)" /tmp/color.png
    notify-send "Name color picked | Hyprpicker" "$(wl-paste)" -i /tmp/color.png -a "Hyprpicker"
    rm /tmp/color.png
    exit 0
}

colorpicker_command(){
    echo -e "HEX\nHSL\nRGB\nHSV\nLCH\nLAB\nOKLAB\nLUMINANCE\nBRIGHTNESS\nNAME" | rofi -dmenu -theme ~/dotfiles/.config/rofi/colorpicker.rasi || exit 0
}

chosen="$(colorpicker_command)"

case ${chosen} in
    "RGB")
        colorpicker_rgb
        ;;
    "HSV")
        colorpicker_hsv
        ;;
    "HEX")
        colorpicker_hex
        ;;
    "HSL")
        colorpicker_hsl
        ;;
    "LCH")
        colorpicker_lch
        ;;
    "LAB")
        colorpicker_lab
        ;;
    "OKLAB")
        colorpicker_oklab
        ;;
    "LUMINANCE")
        colorpicker_luminance
        ;;
    "BRIGHTNESS")
        colorpicker_brightness
        ;;
    "NAME")
        colorpicker_name
        ;;
    *)
        exit 1
        ;;
esac
