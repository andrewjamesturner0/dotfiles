#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

EDITOR=vim

alias ls='ls --color=auto -lh'
alias du2='du -h --all --max-depth=1'
alias dev='cd ~/Dev'
alias raspi='ssh root@Raspberry-pi'
alias laptop='ssh user@archlaptop'
alias sclog='less /home/andrew/.script-logs/backup_log'
alias tlog='less /home/andrew/.script-logs/tasks_log'

PS1='[\u@\h \W]\$ '

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core"

