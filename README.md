# My Dotfiles
These are my dotfile configuration files for different software in Bash. Currently, only Linux is supported. 
## .vimrc
This is my custom .vimrc configuration for Vim. it sets line numbers, syntax, auto indenting, and sets the color scheme to elflord. For Makefiles, it also sets noexpand tab, shiftwidth to 8, and softtabstop to 0.
## .bashrc
This is my custom .bashrc configuration for Bash. it has some abbreviated aliases for common options for common commands. It also provides a quick alias to connect to the linux labs. 
## linux.sh
if the current os is correct, this script changes the current configurations to the custom ones. 
## cleanup.sh 
undoes all the changes made by linux.sh
## Makefile
the makefule has two targets, linux and clean. clean runs cleanup.sh, and linux calls clean, then runs linux.sh
