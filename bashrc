#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

EDITOR=vim

alias ls='ls --color=auto -lh'
alias du2='du -h --all --max-depth=1'
alias dev='cd ~/Dropbox/Dev'
alias raspi='ssh root@Raspberry-pi'

PS1='[\u@\h \W]\$ '

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core"

