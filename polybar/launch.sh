#!/usr/bin/env sh

   polybar DP2 -c ~/.config/polybar/config.ini &

# Launch bar1 and bar2
my_external_monitor=$(xrandr --query | grep 'DP-0')
if [[ $my_external_monitor = *connected* ]]; then
   polybar DP0 -c ~/.config/polybar/config.ini &
fi






