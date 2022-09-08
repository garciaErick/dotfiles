#!/bin/bash

cwd=$(pwd)
zshDir=$cwd/zsh

mkdir -p ~/.config/zshrc
ln -sf $zshDir/.zshrc ~/.zshrc

ln -sf $zshDir/core ~/.config/zshrc/core
ln -sf $zshDir/ohmyzsh ~/.config/zshrc/ohmyzsh
ln -sf $zshDir/tmux ~/.config/zshrc/tmux

# if Macos
# ./os-setup/macos/setup

