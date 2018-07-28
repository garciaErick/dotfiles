#!/bin/bash

cwd=$(pwd)

echo "Setting up Tmux configuration"
ln -sf $cwd/tmux ~/.tmux
ln -sf $cwd/tmux/tmux.conf ~/.tmux.conf
echo "Done \n"

echo "Installing shell color scheme"
mkdir -p ~/.config/base16-shell
ln -sf $cwd/colors/base16-material.dark.sh ~/.config/base16-shell/base16-material.dark.sh 
echo "Done \n"

echo "Setting up Zsh configuration"
ln -sf $cwd/zsh/zshrc ~/.zshrc
source ~/.zshrc
echo "Done \n"

echo "Setting up Vim configuration"
ln -sf $cwd/vim/vimrc ~/.vimrc
mkdir -p ~/.vim/colors
ln -sf $cwd/vim/base16-material.vim ~/.vim/colors
echo "Done \n"

# Installing vundle
#mkdir -p ~/.vim/bundle/
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Installing Vundle plugins
vim +PluginInstall +qall

# Uncomment to install
# Installing YouCompleteMe with C support
#cd ~/.vim/bundle/YouCompleteMe
#./install.py --clang-completer

echo "Setting up Emacs configuration"
mkdir -p ~/.emacs.d
ln -sf $cwd/emacs/configuration.org ~/.emacs.d/.
ln -sf $cwd/emacs/sensible-defaults.el ~/.emacs.d/.
ln -sf $cwd/emacs/init.el ~/.emacs.d/.
echo "Done \n"


