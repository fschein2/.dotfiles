#!/bin/bash

rm -rf ~/.vimrc #removes the .vimrc file

sed -i ~/.bashrc 's/source ∼/.dotfiles/etc/bashrc_custom/ /g' #replaces the source statement with nothing 

rm -rf ~/.TRASH #removes the .TRASH directory
