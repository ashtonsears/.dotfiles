# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.
## Linux Setup
This repository has scripts to set up a Linux development environment. The files included are:
	1.) ./bin/linux.sh
	2.) ./bin/cleanup.sh
	3.) ./Makefile
	4.) .vimrc
	5.) ./etc/bashrc_custom
## ./bin/linux.sh
This script runs multiple setup steps for the Linux development environment. The script does the following:
	1.) Checks that the operating system is Linux
	2.) Creates a .TRASH directory in the home directory if it doesn't exist already
	3.) Renames the .vimrc file to .bup_vimrc
	4.) Adds "source ~/.dotfiles/etc/bashrc_custom" to ./etc/bashrc_custom
The output is appended to a file called linuxsetup.log in the home directory
## ./bin/cleanup.sh
This script resets the changes done by ./bin/linux.sh. The script does the following:
	1.) Removes the .vimrc file from the home directory
	2.) Removes the line "source ~/.dotfiles/bashrc_custom"
	3.) Removes the .TRASH directory
The output is appended to a file called linuxsetup.log in the home directory
## ./Makefile
The Makefile has two targets that run the ./bin/linux.sh script and the ./bin/cleanup.sh script.
## .vimrc
The .vimrc file has some configuration options for VIM.
## ./etc/bashrc_custom
The bashrc_custom file has some configuration options for the Bash shell.
