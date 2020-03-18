#!/bin/bash

rofi_command="rofi 
-theme ~/.cache/wal/colors-rofi-dark.rasi
-xoffset 12
-yoffset 56
-location 1
-no-fullscreen
"
uptime=$(uptime -p | sed -e 's/up //g')

# Options
shutdown="襤"
reboot="ﰇ"
logoff=""
lock=""

# Variable passed to rofi
options="$shutdown\n$reboot\n$suspend"

chosen="$(echo -e "$options" | $rofi_command -p "UP - $uptime" -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
        sudo poweroff
        ;;
    $reboot)
        sudo reboot
        ;;
    $logoff)
        bspc quit
        ;;
    $lock)
       sh ~/.config/xlock/i3lock.sh
        ;;
esac

