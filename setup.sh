#!/bin/bash

cwd=$(pwd)
zshDir=$cwd/zsh
vimDir=$cwd/vim
tmuxDir=$cwd/tmux
emacsDir=$cwd/emacs

echo "Setting up Tmux configuration"
ln -sf $tmuxDir ~/.tmux
ln -sf $tmuxDir/tmux.conf ~/.tmux.conf
echo "Done \n"

echo "Installing shell color scheme"
mkdir -p ~/.config/base16-shell
ln -sf $cwd/colors/base16-material.sh ~/.config/base16-shell/base16-material.sh
ln -sf $cwd/colors/base16-material-palenight.sh ~/.config/base16-shell/base16-material-palenight.sh
ln -sf $cwd/colors/base16-material-palenight-darker.sh ~/.config/base16-shell/base16-material-palenight-darker.sh
echo "Done \n"

echo "Setting up Zsh configuration"
ln -sf $zshDir/zshrc ~/.zshrc
source ~/.zshrc
echo "Done \n"

echo "Setting up Vim configuration"
mkdir -p ~/.vim/colors
ln -sf $vimDir/vimrc ~/.vimrc
ln -sf $vimDir/base16-material.vim ~/.vim/colors
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
ln -sf $emacsDir/configuration.org ~/.emacs.d/.
ln -sf $emacsDir/sensible-defaults.el ~/.emacs.d/.
ln -sf $emacsDir/scroll-mode-line-mode.el ~/.emacs.d/.
ln -sf $emacsDir/init.el ~/.emacs.d/.
echo "Done \n"
