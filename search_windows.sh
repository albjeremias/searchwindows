#!/bin/bash
## Special thanks to lmarena.ai

# Get the list of open windows
windows=$(wmctrl -l)

# Use rofi to search through the windows
selected=$(echo "$windows" | rofi -dmenu -i -p "Search Windows")

# Check if a window was selected
if [ -n "$selected" ]; then
    # Extract the window ID from the selected line
    window_id=$(echo "$selected" | awk '{print $1}')

    # Bring the selected window to the front
    wmctrl -ia "$window_id"
fi
