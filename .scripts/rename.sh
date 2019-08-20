#!/bin/bash

pictures=*.JPG
for f in $pictures
do
	mv "$f" "${f%.JPG}.jpg"
done
notify-send "Rename complete"
