m4_include(bash/common)

if [[ -f .bashrc.priv ]]; then
    . .bashrc.priv
fi

# misc
alias ls='ls --color=auto -lh'
alias lsa='ls --color=auto -lha'
alias du='du -h --all --max-depth=1'
alias youtube-dl="youtube-dl --restrict-filenames --output '%(title)s.%(ext)s'"
alias ckr="killall conky && conky && conky -c $HOME/Dev/dotfiles/conky/conkyrc-todo"
alias td="vim $HOME/TODO/TODO.md"
alias tb="vim $HOME/TODO/to-buy.md"
alias UOB='rdesktop sscmsecuredesktop.cse.bris.ac.uk -d UOB -g 90%'
alias d2k='mount /mnt/networkfs/D2K'
alias myfiles='mount /mnt/networkfs/myfiles'
alias ud2k='umount /mnt/networkfs/D2K'
alias umyfiles='umount /mnt/networkfs/myfiles'
