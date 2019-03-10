#!/bin/bash

#Putar gambar 90 derajat 

clear		#bersihin terminal

echo Rotate mulai...
echo

pictures=*.jpg

for f in $pictures
do
	convert -rotate '-90' "$f" "${f%.jpg}_rotate.jpg"

done
echo

echo Rotate selesai
notify-send "Pictures rotated"
