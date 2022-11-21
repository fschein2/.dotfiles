#!/bin/bash

if [  != "Linux" ] #checks if uname does not equal Linux 
then #iff the above is true it proceeds to the following lines within the statement
	echo "Error: Operating System is not Linux." >> linuxsetup.log #prints the error statement and appends it into the linuxsetup.log file
	exit #exits the code
fi #ends the if-else statement

mkdir -p ~/.TRASH #if .TRASH does not already exist it creates .TRASH in the home directory

mkdir -p ~/.vimrc #if .vimrc does not already exist this will create .vimrc in the home directory
mv ~/.vimrc .bup_vimrc #renames .vimrc to .bup_vimrc
echo "The current .vimrc file was changed to .bup_vimrc" >> linuxsetup.log #prints the statement and appends it to the linuxsetup.log file

cat etc/vimrc > ~/.vimrc # prints vimrc file in etc to the .vimrc file in home

echo "source ∼/.dotfiles/etc/bashrc_custom" >> ~/.bashrc #appends the statement to the bashrc file in the home directory
