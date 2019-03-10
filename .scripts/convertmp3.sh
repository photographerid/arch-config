#!/bin/bash

#convert lagu dr m4a ke mp3

clear		#bersihin terminal

echo Convert mulai...
echo

songs=*.m4a

for f in $songs
do
	ffmpeg -i "$f" -c:a mp3 "${f%.m4a}.mp3"
	
done
echo

echo Convert selesai

echo Hapus m4a
rm $songs
notify-send ".mp3 ready!"
