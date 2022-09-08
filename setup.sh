#!/bin/bash

cwd=$(pwd)
zshDir=$cwd/zsh

echo $cwd

mkdir -p ~/.config/zshrc
ln -sf $zshDir/.zshrc ~/.zshrc

ln -sf $zshDir/amazon ~/.config/zshrc/amazon
ln -sf $zshDir/core ~/.config/zshrc/core
ln -sf $zshDir/ohmyzsh ~/.config/zshrc/ohmyzsh
ln -sf $zshDir/tmux ~/.config/zshrc/tmux
