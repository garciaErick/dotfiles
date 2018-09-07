#!/bin/bash

cwd=$(pwd)
zshDir=$cwd/zsh
vimDir=$cwd/vim
tmuxDir=$cwd/tmux
emacsDir=$cwd/emacs
windowsUser=$(sed -e 's/\r$//' <<< $(cmd.exe /C echo %USERNAME%))
startupProgramsDir="/mnt/c/Users/$windowsUser/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup/"
autoHotkeyShortcut="/mnt/c/ProgramData/Microsoft/Windows/Start Menu/Programs/AutoHotkey/AutoHotkey.lnk"
use_proxy=true
wget_args=""
if [ "$use_proxy" = true ] ; then
	wget_args="-e use_proxy=yes -e https_proxy=http://web-proxy.houston.hpecorp.net:8080"
fi

# echo "Installing required packages"
# cd ubuntu_packages
# sudo ./setup.sh
# cd $cwd

# echo "Setting up Zsh as the default shell"
# chsh -s $(which zsh)
# echo "Done \n"

# echo "Setting up Zsh oh-my-zsh"
# git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# echo "Done \n"

# echo "Setting up Tmux configuration"
# ln -sf $tmuxDir ~/.tmux
# ln -sf $tmuxDir/tmux.conf ~/.tmux.conf
# echo "Done \n"

# echo "Installing shell color scheme"
# mkdir -p ~/.config/base16-shell
# ln -sf $cwd/colors/base16-material.sh ~/.config/base16-shell/base16-material.sh
# ln -sf $cwd/colors/base16-material-palenight.sh ~/.config/base16-shell/base16-material-palenight.sh
# ln -sf $cwd/colors/base16-material-palenight-darker.sh ~/.config/base16-shell/base16-material-palenight-darker.sh
# echo "Done \n"

# echo "Setting up Zsh configuration"
# ln -sf $zshDir/zshrc ~/.zshrc
# source ~/.zshrc
# echo "Done \n"

# echo "Setting up Vim configuration"
# mkdir -p ~/.vim/colors
# ln -sf $vimDir/vimrc ~/.vimrc
# ln -sf $vimDir/base16-material.vim ~/.vim/colors
# echo "Done \n"

# # Installing vundle
# mkdir -p ~/.vim/bundle/
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# # Installing Vundle plugins
# vim +PluginInstall +qall

# # Uncomment to install
#  Installing YouCompleteMe with C support
# cd ~/.vim/bundle/YouCompleteMe
# ./install.py --clang-completer

# echo "Setting up Emacs configuration"
# ln -sf $emacsDir ~/.emacs.d
# mkdir -p ~/.emacs.d/auto-save
# echo "Done \n"

# echo "Downloading Firacode fonts for Windows"
# wget https://github.com/tonsky/FiraCode/raw/master/distr/ttf/FiraCode-Bold.ttf $wget_args
# wget https://github.com/tonsky/FiraCode/raw/master/distr/ttf/FiraCode-Light.ttf $wget_args
# wget https://github.com/tonsky/FiraCode/raw/master/distr/ttf/FiraCode-Medium.ttf $wget_args
# wget https://github.com/tonsky/FiraCode/raw/master/distr/ttf/FiraCode-Regular.ttf $wget_args
# wget https://github.com/tonsky/FiraCode/raw/master/distr/ttf/FiraCode-Retina.ttf $wget_args
# echo "Done \n"


echo "Downloading Autohotkey for Windows"
wget https://www.autohotkey.com/download/ahk-install.exe $wget_args
cmd.exe /C ahk-install.exe /S
cp windows/AutoHotkey.ahk /mnt/c/Users/$windowsUser/Documents/
cp "$autoHotkeyShortcut" "$startupProgramsDir"
cd "$startupProgramsDir"
cmd.exe /C AutoHotkey.lnk &

# Replace in bash
# #!/bin/bash
# if [[ "$1" =~ :\\ ]]; then
# 	path=$(sed -e "s/C:\\\/\/mnt\/c\//" -e "s/\\\/\//g" <<< "$1")
# else
# 	path=$(sed -e "s/\/mnt\/c\//C:\\\/" -e "s/\//\\\/g" <<< "$1")
# fi
# echo $path
