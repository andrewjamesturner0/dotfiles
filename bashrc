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
alias Xlaptop='ssh user@archlaptop sudo shutdown -Ph now'
alias raspi='ssh user@Raspberry-pi'
alias Xraspi='ssh user@Raspberry-pi sudo shutdown -Ph now' 
alias server='ssh user@bsdserver'
alias Xserver='ssh user@bsdserver sudo shutdown -p now'
# wol
alias wakeserver='wol 30:85:a9:3c:4e:3d'
# git
alias commit='git commit -am'
alias add='git add'
alias status='git status'
alias push='git push'
alias pull='git pull'
alias checkout='git checkout'
alias branch='git branch'
alias rebase='git rebase'
# misc
alias ls='ls --color=auto -lh'
alias lsa='ls --color=auto -lha'
alias du='du -h --all --max-depth=1'
alias logs='more *.log | cat'
# places
alias home='cd && clear'
alias dev='cd /home/andrew/Dev'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
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
# systemd shortcuts
startd() { sudo systemctl start $1.service ; sudo systemctl status $1.service; }
restartd() { sudo systemctl restart $1.service ; sudo systemctl status $1.service; }
stopd() { sudo systemctl stop $1.service ; sudo systemctl status $1.service; }
