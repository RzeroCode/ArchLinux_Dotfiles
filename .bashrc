#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export BROWSER=firefox

#Autostartx
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi

#Aliases
alias ls='ls --color=auto'
alias stn='sudo shutdown now'
alias reb='sudo reboot'
PS1='[\u@\h \W]\$ '
