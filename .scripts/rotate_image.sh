#!/bin/bash

#Putar gambar 90 derajat 

clear		#bersihin terminal

echo Rotate mulai...
say rotate begins
echo

pictures=*.jpg

for f in $pictures
do
	convert -rotate '-90' "$f" "${f%.jpg}.jpg"

done
echo

echo Rotate selesai
echo

echo Hapus jpg
#rm $pictures
say convert finished
