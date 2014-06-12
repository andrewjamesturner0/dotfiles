m4_include(bash/common)
m4_include(bash/ubuntu.generic)

if [[ -f .bashrc.priv ]]; then
    . .bashrc.priv
fi

# misc
alias du='du -h --all --max-depth=1'
alias youtube-dl="youtube-dl --restrict-filenames --output '%(title)s.%(ext)s'"
alias tdw="vim $HOME/TODO/TODO-work.md"
alias tdp="vim $HOME/TODO/TODO-play.md"
alias tb="vim $HOME/TODO/to-buy.md"
alias ckr="killall conky && conky && conky -c $HOME/TODO/conkyrc-todo-work.ubuntu && conky -c $HOME/TODO/conkyrc-todo-play.ubuntu"
alias UOB='rdesktop sscmsecuredesktop.cse.bris.ac.uk -d UOB -g 90%'
alias d2k='mount /mnt/networkfs/D2K'
alias myfiles='mount /mnt/networkfs/myfiles'
alias ud2k='umount /mnt/networkfs/D2K'
alias umyfiles='umount /mnt/networkfs/myfiles'
