#!/bin/bash


# Use rofi to display format options (HEX, RGB, HSL) and get the selected format
format=$(echo -e "HEX\nRGB\nHSL" | rofi -dmenu -p "Select color format")

# Display the color in the selected format
case "$format" in
    "HEX")
        # Get HEX format using hyprpicker
        color=$(hyprpicker -a --format=hex)
        ;;
    "RGB")
        # Get RGB format using hyprpicker
        color=$(hyprpicker -a --format=rgb)
        ;;
    "HSL")
        # Get HSL format using hyprpicker
        color=$(hyprpicker -a --format=hsl)
        ;;
    *)
        echo "Invalid format selected, exiting..."
        exit 1
        ;;
esac

# Use ImageMagick to generate an image with the selected color
convert -size 32x32 xc:$selected_color "/tmp/color_box.png"

# Send a desktop notification with the selected color
notify-send "Color Selected" "Color: $selected_color" -i "/tmp/color_box.png"
