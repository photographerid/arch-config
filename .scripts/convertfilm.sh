#!/bin/bash

#####convert movie ke mkv dan tambahin subtitle

clear
echo Convert dimulai...
echo
ffmpeg -i "$1" -i "$2" -c:v copy -c:a copy -c:s subrip "$3"
echo
echo Convert selesai

echo
echo Hapus file original...
rm "$1" 
notify-send "Convert finish"
