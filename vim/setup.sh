#!/bin/bash

cp vimrc ~/.vimrc

mkdir -p ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim -E -c PluginInstall -c q -c q

cp ~/.vim/bundle/vim-hybrid-material/base16-material/base16-material.dark.sh ~/.config/base16-shell
mkdir -p ~/.vim/colors
cp ~/.vim/bundle/vim-hybrid-material/base16-material/base16-material.vim ~/.vim/colors/
