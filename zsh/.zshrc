export ZSH=~/.oh-my-zsh
export LS_COLORS='ow=01;36;40'

# Tmux start zsh
[[ $TERM != "screen" ]] && exec tmux
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

DEFAULT_USER=$USER
PATH=$PATH:/mnt/c/Users/garciaErick/AppData/Local/Programs/Python/Python37/python.exe

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

source $ZSH/oh-my-zsh.sh

# Term Colors
BASE16_SHELL="$HOME/.config/base16-shell/base16-material.dark.sh"
[[ -s $BASE16_SHELL  ]] && source $BASE16_SHELL

alias zshrc="vim ~/.zshrc && . ~/.zshrc"
alias vimrc="vim ~/.vimrc "
alias tmuxrc="vim ~/.tmux.conf && tmux source-file ~/.tmux.conf"
alias reloadzshrc='. ~/.zshrc'

#Aliases for Windows native paths
alias subl='/mnt/c/Program\ Files/Sublime\ Text\ 3/subl.exe'
alias VSCODE_PATH='/mnt/c/Program\ Files/Microsoft\ VS\ Code/Code.exe'
alias python='/mnt/c/Users/garciaErick/AppData/Local/Programs/Python/Python37/python.exe'
alias go='/usr/bin/go'
alias winpython='/mnt/c/Users/erick/AppData/Local/Programs/Python/Python36/python.exe'
alias winuic5='/mnt/c/Users/erick/AppData/Local/Programs/Python/Python36/Scripts/pyuic5.exe'
alias compileUiFile='function compileUiFile(){ winuic5 -o "$1.py" "$1.ui";};compileUiFile'
alias officeword='/mnt/c/Program\ Files\ \(x86\)/Microsoft\ Office/root/Office16/WINWORD.EXE'
alias explorer='/mnt/c/Windows/explorer.exe'
alias pissh='sshpass -p "whiteWolf1!" ssh -o StrictHostKeyChecking=no pi@192.168.1.78'
alias vimPluginsUpdate="vim +PluginInstall +qall"
alias termcolors='vim ~/.config/base16-shell/base16-material.dark.sh'
alias vimcolors='vim ~/.vim/colors/base16-material.vim'
alias :q='exit'
alias :w='echo This is not vim'

#For git log
alias gitlog='git log --all --color --graph --pretty=format:"%C(yellow)%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'

#Bash aliases
alias ..='cd ..'
alias ls='ls -X --color'

# unsetopt BG_NICE

function cd {     
	builtin cd "$@" && ls -F     
}

function vscode (){
	if [ -z "$1" ]; then
		VSCODE_PATH > /dev/null 2>&1 &
	else
		VSCODE_PATH "$1" > /dev/null 2>&1 &
	fi
}

cd

