#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core"
export EDITOR=vim
PS1='\u@\h [\w]: '
if [ -t 0 -a -t 1 ]; then
    #kill flow control
    stty -ixon
    stty -ixoff
    if [ ${BASH_VERSINFO[0]} -ge 4 ]; then
        shopt -s cdspell
        shopt -s extglob
        shopt -s cmdhist
        shopt -s checkwinsize
        shopt -s no_empty_cmd_completion
        shopt -u promptvars
        shopt -s histappend
        set -o noclobber
        shopt -s dirspell
    fi
fi

# ssh
alias laptop='ssh user@archlaptop'
alias raspi='ssh user@Raspberry-pi'
alias xraspi='ssh user@Raspberry-pi sudo shutdown -Ph now' 
# git
alias commit='git commit -am'
alias status='git status'
alias checkout='git checkout'
alias branch='git branch'
alias rebase='git rebase'
# misc
alias ls='ls --color=auto -lh'
alias du='du -h --all --max-depth=1'
alias logs='more /home/andrew/.script-logs/*.log | cat'
alias home='cd && clear'
# places
alias dev='cd /home/andrew/Dev'
# functions
tarxz() { tar cvf "${1%%/}.tar.xz" "${1%%/}/"; }
targz() { tar cvf "${1%%/}.tar.gz" "${1%%/}/"; }
mkcd() { mkdir -p "$1" && cd "$1"; }
extract () {
    if [ -r "$1" ]; then
    case "$1" in
        *.t@(gz|lz|xz|b@(2|z?(2))|a@(z|r?(.@(Z|bz?(2)|gz|lzma|xz)))))
               bsdtar xvf "$1" ;;
        *.Z)   uncompress "$1" ;;
        *.bz2) bunzip2 "$1"    ;;
        *.gz)  gunzip "$1"     ;;
        *.xz)  unxz "$1"       ;;
        *.zip) unzip "$1"      ;;
        *)     echo "$0: unrecognized file type: $1" >&2;;
    esac
    else
        echo "$0: unreadable file: $1" >&2
    fi
}
