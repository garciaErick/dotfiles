# My Dotfiles #

These are the dotfiles needed for restoring or sharing my configurations

## How do I get set up? ##

Just copy the corresponding dotfiles/scripts to the directories in the parenthesis 

## Contents ##

* i3-Gaps WM (~/.i3/config)
* Bash Shell (~/.bashrc)
* Executables (/usr/bin/)
* Urxv (~/.Xdefaults)
* Php 
* Vim (~/.vimrc)
* Extras
* Sources
* Contact

#### i3-Gaps Window Manager ####
i3 is a tiling window manager that uses vim key bindings, it is very easy to learn how to customize. Gaps is an extension to i3 to make up a minimalistic look, having gaps between windows making a less cluttered screen.

**Installation** sudo apt-get install i3 (EZ m8)

* Mod key is set to Alt (Mod1)
* Startup programs
* Custom keybindings
* Extra custom modes

#### Bash Shell ####

This is the dot file for bash shell, in here you can add extra functions, paths, or add aliases.

* Every time the cd command is used, it is followed by a ls
* Alias s = 'sudo' 
* Alias .. = 'cd' 

#### Executables ####

* Starting dropbox (sudo dropbox start)
* Starting ranger 
* IntelliJ
* Screenshot tools:  
All of these need a directory ~/Screenshots/ and files will be named <scriptName>.png, after executing will proceed to open file with eog
    * ss-select: rectangular selection for a screenshot
    * ss-window: screenshot of focused window
    * ss-workspace: screenshot of current workspace (supports multiple displays)
* Mycalendar: opens current year calendar on terminal
* Extend-right: extends current hdmi output to the right
* Extend-left: extends current hdmi output to the left
* Audio-laptop: uses laptop analog-stereo sound card profile as output
* Audio-hdmi: uses hdmi-stereo sound card profile as output

#### Urxvt ####

Urxvt is a lightweight and highly customizable terminal emulator. 

**Installation** sudo apt-get install rxvt-unicode (EZ m9)

* Colors
* Transparency
* No borders or scroll bars
* Clipboard Functionality
    * Install xclip and copy the perl script http://db.tt/JjlLYd5A (also in folder) to /lib/urxvt/perl/clipboard  
    `URxvt.keysym.Shift-Control-V: perl:clipboard:paste`  
    `URxvt.iso14755: False`  
    `URxvt.perl-ext-common: default,clipboard`  

#### Php ####

* Enabling mod rewrite and mcrypt

#### Vim ####

A highly customizable clone of the popular text editor Vi.

#### Extras ####

* Changing Capslock to work as Esc key for better ergonomics and effectiveness  
    `xmodmap -e "clear lock" #disable caps lock switch`  
    `xmodmap -e "keysym Caps_Lock = Escape" #set caps_lock as escape`

#### Sources ####

* [/r/unixporn](https://www.reddit.com/r/unixporn)
* [/r/vim](https://www.reddit.com/r/vim)
* [i3wm](https://i3wm.org/)
* [i3-gaps](https://github.com/Airblader/i3)

### Contact ###

* egarcia87@miners.utep.edu