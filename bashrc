#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core"
PS1='\u@\h [\W]: '
EDITOR=vim

# ssh
alias laptop='ssh user@archlaptop'
alias raspi='ssh user@Raspberry-pi'
alias xraspi='ssh user@Raspberry-pi sudo shutdown -Ph now' 
# misc
alias ls='ls --color=auto -lh'
alias du='du -h --all --max-depth=1'
alias logs='more /home/andrew/.script-logs/*.log | cat'
alias home='cd && clear'
# places
alias dev='cd /home/andrew/Dev'
