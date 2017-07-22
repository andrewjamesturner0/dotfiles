m4_include(bash/common)

# bash completion
[[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]] && \
        source /usr/local/share/bash-completion/bash_completion.sh

# PATH
[[ -d $HOME/Bin ]] && PATH="$PATH:$HOME/Bin"

# misc
alias ls='ls -lh'
alias lsa='ls -alh'
alias du='du -h -d 1'
alias pkgchecker="sudo pkg update; sudo pkg version | grep '<'; sudo pkg audit -F"
alias pkgupdate="sudo pkg update; sudo pkg upgrade -y"
alias baseupdate="sudo freebsd-update fetch install"
