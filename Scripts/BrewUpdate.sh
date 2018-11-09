#!/bin/sh

###script buat update sampai clean up Homebrew, didalam jaringan ber proxy###
clear						#clear terminal

echo Hello, $USER. Your Homebrew will be updated
say Updating Homebrew
echo
export https_proxy="https://152.118.24.10:8080"	#set proxy

echo 
brew update					#lihat update Homebrew
echo

echo This is your outdated programs
echo
brew outdated					#lihat program terinstal yg hrs diupdate
echo
echo Upgrading
echo
brew upgrade					#upgrade program yg outdated
echo
echo Outdated programs will be erased
echo
brew cleanup					#bersihin program yg udah outdated
echo
echo In case you need it, here is your current proxy
echo
echo export https_proxy="https://152.118.24.10:8080"	#tunjukin proxy yg dipake

echo Thank you for your attention, $USER
say Homebrew has updated
