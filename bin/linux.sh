#!/bin/bash

#sets variable UNAME to the output of uname
UNAME=uname
#checks if the operating system is not Linux; if it's not, prints error message and exits

if [ $UNAME != "Linux" ]; then
	echo "Operating system is not Linux." >> linuxsetup.log
	exit 1
fi
#declares the path of the .vimrc file to a variable
FILE="~/.vimrc"
#checks if the file exists in the home directory; if so, changes its name to .bup_vimrc and prints a message to linuxsetup.log
if [ "$FILE" ]; then
	mv $FILE ~/.bup_vimrc
	echo "Current ~/.vimrc file was changed to ~/.bup_vimrc." >> linuxsetup.log

#copies the contents of etc/vimrc to .vimrc in the home directory
cat etc/vimrc > ~/.vimrc
#appends the filepath of bashrc_custom to ~/.bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

