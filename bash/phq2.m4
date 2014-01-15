m4_include(bashrc-common)

# bash completion
[[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]] && \
        source /usr/local/share/bash-completion/bash_completion.sh

# misc
alias ls='ls -lh'
alias lsa='ls -lha'
alias du='du -h -d 1'
alias ubsd="sudo portsnap fetch update && sudo portmaster --no-confirm --delete-build-only --packages-build -adyGH"
alias pminstall='portmaster --no-confirm --delete-build-only --packages-build -dyGH'
alias zfson="/home/at/Dev/zfson/zfson.sh"
alias vbm='VBoxManage'
