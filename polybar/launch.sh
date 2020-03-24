#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar


polybar DP0 -c ~/.config/polybar/config.ini &

# Launch bar1 and bar2
my_external_monitor=$(xrandr --query | grep 'DP-0')
if [[ $my_external_monitor = *connected* ]]; then
   polybar DP2 -c ~/.config/polybar/config.ini &
fi







