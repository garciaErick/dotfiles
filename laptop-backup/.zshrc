export ZSH=/home/garciaErick/.oh-my-zsh
DEFAULT_USER=$USER

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

source $ZSH/oh-my-zsh.sh

BASE16_SHELL="$HOME/.config/base16-shell/base16-material.dark.sh"
[[ -s $BASE16_SHELL  ]] && source $BASE16_SHELL

alias zshrc="vim ~/.zshrc && . ~/.zshrc"
alias vimrc="vim ~/.vimrc "
# alias vimrc="vim ~/.vimrc && . ~/.vimrc"
alias reloadzshrc='. ~/.zshrc'

#Aliases for Windows native paths
alias subl='/mnt/c/Program\ Files/Sublime\ Text\ 3/subl.exe'
alias VSCODE_PATH='/mnt/c/Program\ Files/Microsoft\ VS\ Code/Code.exe'
alias winpython='/mnt/c/Users/erick/AppData/Local/Programs/Python/Python36/python.exe'
alias winuic5='/mnt/c/Users/erick/AppData/Local/Programs/Python/Python36/Scripts/pyuic5.exe'
alias compileUiFile='function compileUiFile(){ winuic5 -o "$1.py" "$1.ui";};compileUiFile'
alias officeword='/mnt/c/Program\ Files\ \(x86\)/Microsoft\ Office/root/Office16/WINWORD.EXE'
alias explorer='/mnt/c/Windows/explorer.exe'
alias pissh='sshpass -p "whiteWolf1!" ssh -o StrictHostKeyChecking=no pi@192.168.1.76'

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

