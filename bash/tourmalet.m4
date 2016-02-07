m4_include(bash/common)

# bash completion
[[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]] && \
        source /usr/local/share/bash-completion/bash_completion.sh

# PATH
[[ -d $HOME/Bin/freebsd ]] && PATH="$PATH:$HOME/Bin/freebsd"

# misc
alias ls='ls -lh'
alias lsa='ls -alh'
alias du='du -h -d 1'
alias ubsd="sudo portsnap fetch update && sudo portmaster --no-confirm --delete-build-only --packages-build -adyGH"
alias pmcheck="sudo portsnap fetch update && sudo portmaster -L"
alias pminstall='sudo portmaster --no-confirm --delete-build-only --packages-build -dyGH'
alias zfson="/home/ajt/Dev/zfson/zfson.sh"
alias vbm='VBoxManage'
alias cputemp='sysctl -a | grep temperature'
alias pkgchecker="sudo pkg update; sudo pkg version | grep '<'; sudo pkg audit -F"
