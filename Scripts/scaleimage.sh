#!/bin/sh

#####Script buat ubah ukuran gambar (bulk) supaya jadi 640px######
clear
say Scaling images
echo Hello $USER 
printf "Which files? -> " 
read location     #input lokasi file
find $location -type f -name '*.jpg' -exec sips -Z 640 {} \;
echo
echo $USER, scale image has finished
say Scaling images has finished
