#!/bin/bash

#removes .vimrc from home directory
rm ~/.vimrc
#removes the line "source ~/.dotfiles/etc/bashrc_custom" from ~/.bashrc
sed '/source\ ~/.dotfiles/etc/bashrc_custom/d' ~/.bashrc
#removes .TRASH directory from home directory
rm -rf ~/.TRASH
