#!/bin/sh

###script buat update sampai clean up Homebrew, tanpa proxy###
clear		#clear terminal

echo Hello, $USER. Your Homebrew will be updated
say Updating Homebrew
echo
brew update	#lihat update Homebrew
echo
echo This is your outdated program
echo
brew outdated	#lihat program terinstal yg harus diupdate
echo
echo Upgrading
echo
brew upgrade	#upgrade program yg outdated
echo
echo Outdated program will be cleaned
echo
brew cleanup	#bersihin program yg outdated
echo
echo Thank you for your attention, $USER
say Homebrew update has finished
