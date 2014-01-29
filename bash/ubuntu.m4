m4_include(bash/common)

if [[ -f .bashrc.priv ]]; then
    . .bashrc.priv
fi

# misc
alias ls='ls --color=auto -lh'
alias lsa='ls --color=auto -lha'
alias du='du -h --all --max-depth=1'
alias ckr="killall conky && conky && conky -c $HOME/Dev/dotfiles/conky/conkyrc-todo"
alias td="vim $HOME/Dropbox/todo/TODO.md"
