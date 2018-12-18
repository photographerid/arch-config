#!/bin/bash

#####convert markdown ke pdf pake pandoc
echo Membuat file PDF...
echo
pandoc -s --bibliography /Users/Halim/Documents/markdown/Daftar\ Pustaka.bib --csl /Users/Halim/Documents/markdown/nature.csl "$1" -o "$2" 
echo
echo PDF siap!
echo
mupdf-gl "$2"
