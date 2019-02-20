#!/bin/bash

#script utk convert film ke format iPod pake ffmpeg

clear
echo Convert mulai...

film=*.mp4

for f in $film
do 
	
	ffmpeg -i "$f" -c:v libx264 -profile:v baseline -s 320x180 -c:a aac "${f%.mp4}iPod.mp4"
	rm "$f"

done

echo Convert selesai
