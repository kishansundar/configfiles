#!/bin/bash
icon=/home/kishan/.config/xlock/icon.png
tmpbg=/tmp/screen.png
scrot /tmp/screen.png
convert $tmpbg -scale 10% -scale 1000% $tmpbg
convert $tmpbg $icon -gravity center -composite -matte $gmpbg
i3lock -u -i $tmpbg
