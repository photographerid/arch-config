#!/bin/bash

for file in *.JPG
do
	mv "$file" "${file%.JPG}.jpg"
done
notify-send "Rename complete"
