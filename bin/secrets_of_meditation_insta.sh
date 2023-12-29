#!/bin/bash

SIZE=1080
OUTDIR=insta/
TXT_FILE=SECRETS_OF_MEDITATION_A_LOGICAL_PROGRESSION_FROM_THEORY_TO_PRACTICE.txt
COUNTER=0

generate_img() {
  text="$1"
  counter=$(printf %03d $COUNTER)
  echo "IMG $counter $text"
  ./magick -background lightgrey -fill black -stroke white -strokewidth 2 -font "Terminus-(TTF)" -size ${SIZE}x${SIZE} -gravity center caption:"$text" $OUTDIR/insta-$counter.png
  ./magick $OUTDIR/insta-$counter.png -fill darkgrey -gravity Southeast -font "Terminus-(TTF)" -pointsize 20 -annotate +5+5 "secrets-of-meditation.com by Ego Programus" $OUTDIR/insta-$counter-final.png
  let COUNTER++
}

trim_text() {
  text="$1"
  echo "$text" | sed -e 's/^ *//' -e 's/ *$//g' -e 's/^- //' -e 's/\* //'
}

cat $TXT_FILE | while read line; do
  if [[ "$line" == *SECRETS* ]]; then
    IFS=":" read -ra split_line <<< "$line"
    for sub_line in "${split_line[@]}"; do
	img_text=$(trim_text "$sub_line")
	generate_img "$img_text"
    done
  fi

  if [[ "$line" == -* ]]; then
    IFS=".)(" read -ra split_line <<< "$line"
    for sub_line in "${split_line[@]}"; do
	img_text=$(trim_text "$sub_line")
	generate_img "$img_text"
    done
  fi

  if [[ "$line" == *\** ]]; then
    img_text=$(trim_text "$line")
    generate_img "$img_text"
  fi

  if [[ "$line" == by* ]]; then
    img_text=$(trim_text "$line")
    generate_img "$img_text"
  fi

done

