#!/bin/bash

# cp vimrc ~/.vimrc

# Installing vundle
# mkdir -p ~/.vim/bundle/
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Installing Vundle plugins
# vim +PluginInstall +qall

# Copying Colorscheme
mkdir -p ~/.config/base16-shell
cp ~/.vim/bundle/vim-hybrid-material/base16-material/base16-material.dark.sh ~/.config/base16-shell/
mkdir -p ~/.vim/colors
cp ~/.vim/bundle/vim-hybrid-material/base16-material/base16-material.vim ~/.vim/colors/

# # Python dependency
# # Installing YouCompleteMe with C support
# cd ~/.vim/bundle/YouCompleteMe
# ./install.py --clang-completer
