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

#### i3-Gaps Window Manager ####
i3 is a Window manager that uses vim key bindings, it is very easy to learn how to customize. Gaps is an extension to i3 to make up a minimalistic look, having gaps between windows making a less cluttered screen.

* Startup programs
* Custom keybindings
* Extra custom modes
* Mod key is set to Alt

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
`All of these need a directory ~/Screenshots/ and files will be named <scriptName>.png, after executing will proceed to open file with eog`
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

#### Php ####

#### Extras ####

* Changing Capslock to work as Esc key for better ergonomics and effectiveness
`xmodmap -e "clear lock" #disable caps lock switch`
`xmodmap -e "keysym Caps_Lock = Escape" #set caps_lock as escape`

### Contact ###

* egarcia87@miners.utep.edu