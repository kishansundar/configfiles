#!/bin/bash

#!/bin/bash

rectangles=" "

SR=$(xrandr --query | grep ' connected' | grep -o '[0-9][0-9]*x[0-9][0-9]*[^ ]*')
for RES in $SR; do
  SRA=(${RES//[x+]/ })
  CX=$((${SRA[2]} + 2850))
  CY=$((${SRA[1]} - 140))
  rectangles+="rectangle $CX,$CY $((CX+460)),$((CY-140)) "
done

ICON=/home/kishan/.config/i3lock/face1.png

TMPBG=/tmp/screen.png
scrot $TMPBG && convert $TMPBG -scale 5% -scale 2000% -draw "fill black fill-opacity 0.19 $rectangles" $TMPBG && convert $TMPBG $ICON -gravity center -composite -matte $TMPBG


i3lock \
  -i $TMPBG \
  --indicator \
  --clock \
  --force-clock \
  --datestr "%a, %b %d, %Y" \
  --time-font="Fira Code" \
  --date-font="Fira Code" \
  --layout-font="Dank Mono" \
    --wrong-font="Dank Mono" \
  --timesize=40 \
  --datesize=40 \
  --layoutsize=25 \
   --wrongsize=22 \
  --time-align \
  --date-align  \
  --verif-align=1 \
  --wrong-align=center \
  --radius=240 \
  --ring-width 30 \
  --veriftext="" \
  --wrongtext="" \
  --lockfailedtext="" \
  --noinputtext="EMPTY!" \
  --timecolor="00fa9aFF" \
  --datecolor="00fa9aFF" \
  --insidecolor=00000000 \
  --insidevercolor=00000000 \
  --insidewrongcolor=00000000 \
  --ringvercolor=00bfff40 \
  --ringwrongcolor=dc143c40 \
  --linecolor=00000000 \
  --ringcolor=efefef20 \
  --keyhlcolor=00fa9aBB \
  --bshlcolor=c71585BB \
  --separatorcolor=00000000 \
  --layoutcolor=fff0f5ff \
  --timepos=w-355:h-230 \
  --datepos=w-355:h-165 \

rm $TMPBG




#convert face.png  \( +clone -alpha transparent -draw "circle 320,320 290,1" \)   -compose copyopacity -composite face2.png

#convert face2.png -alpha on -channel a -evaluate multiply 0.35 +channel face1.png

