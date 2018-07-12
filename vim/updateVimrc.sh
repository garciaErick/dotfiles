#!/bin/bash

echo "Updating terminal colors"
mkdir -p ~/.config/base16-shell
cp base16-material.dark.sh ~/.config/base16-shell/

echo "Updating Vim colors"
mkdir -p ~/.vim/colors
cp base16-material.vim ~/.vim/colors/

echo "Updating Vim config"
cp vimrc ~/.vimrc
