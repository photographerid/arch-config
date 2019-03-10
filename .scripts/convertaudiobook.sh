#!/bin/bash

#convert audiobook dr mp3 ke m4b

clear		#bersihin terminal

echo Convert mulai...
echo

books=*.mp3
audiobook=*.m4a

for f in $books
do
	ffmpeg -i "$f" -c:a aac "${f%.mp3}.m4a"
	
done
echo

echo Convert selesai
echo

echo Ganti m4a jadi m4b

for f in $audiobook
do
	mv "$f" "${f%.m4a}.m4b"
done
echo

echo Hapus file original
rm $books
notify-send "Audiobook finished"
