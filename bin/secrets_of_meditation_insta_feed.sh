#!/bin/bash

INSTA_DIR=insta
HTML=index.html

cd $INSTA_DIR

echo "<style>img { width: 200px; margin: 4px; border: 1px solid #000; } div { width: 630px; margin: 0 auto;}</style>" > $HTML

echo "<div>" >> $HTML

for file in final/*.png; do
  echo -n "<img src=\"$file\">" >> $HTML
done

echo "</div>" >> $HTML
