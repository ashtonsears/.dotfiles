#!/bin/bash

#Removes .vimrc from home
rm -f ~/.vimrc

#Remove last line of .bashrc fil

sed -i '/source \/\.dotfiles\/bashrc_custom/d' ~/.bashrc

#Remove the .TRASH directory from home
rm -rf ~/".TRASH"
