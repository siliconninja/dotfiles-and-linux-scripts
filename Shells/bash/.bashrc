### Custom Commands and Aliases
### http://tldp.org/LDP/abs/html/aliases.html
alias hist="history"
alias histc="history -c"
alias histrm="history -d"
alias lsa="ls -a"
alias cls="clear"

# Custom prompt
# http://tldp.org/HOWTO/Bash-Prompt-HOWTO/bash-prompt-escape-sequences.html
# https://gist.github.com/hugorodgerbrown/3188514
# http://misc.flogisoft.com/bash/tip_colors_and_formatting
PS1='\e[92m\u\e[0m@\e[91m\h\e[0m (\# \e[93m\W\e[0m) [\e[97m\T\e[0m]\n$ --> '

# Android Studio AVD Fix
export ANDROID_EMULATOR_USE_SYSTEM_LIBS=1

### HISTORY SETTINGS

## Disable history
## https://stackoverflow.com/questions/18663078/disable-history-in-linux
#set +o history

## Location for history file
## https://askubuntu.com/questions/447295/where-is-the-bash-history-for-the-root-user-saved
HISTFILE=$HOME/.bash_history

## Limit history to 20 commands
## https://askubuntu.com/questions/307541/how-to-change-history-size-for-ever
HISTSIZE=20
HISTFILESIZE=20

## Compile & make a C program executable using GCC instantly. (This code only works in Bash.)
## https://stackoverflow.com/questions/941338/how-to-pass-command-line-arguments-to-a-shell-alias
## https://stackoverflow.com/questions/27658675/how-to-remove-last-n-characters-from-a-string-in-bash
## Apparently using $1 in the { } doesn't work, it gives a "bad substitution" error. You need a variable name for it.
alias ccompile="function _ccompile() { gcc -o $1; old=$1 executable_file_name=${old::-2}; chmod +x executable_file_name; }; _ccompile"
