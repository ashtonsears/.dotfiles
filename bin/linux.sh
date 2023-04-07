#!/bin/bash

#Checks if the operating system type is Linux; if uname does not equal Linux, then error message is sent to linuxsetup.log file and exit command is run

if [ $(uname) != "Linux" ]; then
	echo "ERROR: This script can only be run on a Linux system :(" >> linuxsetup.log
	exit 1
fi

#Makes '.TRASH' directory if it doesn't exist already

mkdir -p ~/".TRASH"

#Checks if .vimrc file is in home; if true, name is changed to .bup_vimrc and message is sent to linuxsetup.log that name of .vimrc was changed

if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~./bup_vimrc
	echo "The .vimrc file was changed to .bup_vimrc" >> linuxsetup.log
fi

#Redirects the contents of etc/vimrc to a file called .vimrc in home

cp ./etc/vimrc ~/.vimrc

#Add the following statment to the end of the .bashrc file located in home

echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
