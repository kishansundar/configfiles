#!/bin/bash

## Created By Aditya Shakya

MENU="$(rofi -sep "|" -dmenu -i -p '' -location 3 -yoffset 40 -xoffset -10  -margin 0 -hide-scrollbar -line-padding 0 -padding 0 -width 7 -lines 4 -font "Iosevka Nerd Font Mono 15" <<< "Lock|Logout|Reboot|Shutdown")"
            case "$MENU" in
                *Lock) sh ~/.config/xlock/i3lock.sh;;
                *Logout) bspc quit;;
                *Reboot) sudo reboot ;;
                *Shutdown) sudopoweroff
            esac
