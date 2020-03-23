#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export BROWSER=firefox
export EDITOR=vim

#Autostartx
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi

#Aliases
alias ls='ls --color=auto'
alias stn='sudo shutdown now'
alias reb='sudo reboot'
alias nf='clear && neofetch'

#Old PS1
#PS1='[\u@\h \W]\$ '


if [[ ${EUID} == 0 ]] ; then
		PS1='\[\033[01;31m\][\h\[\033[01;36m\] \W\[\033[01;31m\]]\$\[\033[00m\] '
	else
		#PS1='\[\033[01;36m\][\u\[\033[01;31m\]@\h\[\033[01;35m\] \W\[\033[01;36m\]]\$\[\033[00m\] '
		PS1="\[\033[01;36m\][\u\[\033[01;31m\]@\h\[\033[01;35m\] \W\[\033[01;36m\]]\[\033[01;00m\]:\[\033[01;32m\]\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\$\[\033[00m\] "
	fi
