m4_include(bash/common)
m4_include(bash/common.linux)
m4_include(bash/ubuntu.generic)

if [[ -f .bashrc.priv ]]; then
    . .bashrc.priv
fi

# misc
alias youtube-dl-audio="youtube-dl -x --audio-format mp3"
alias tdw="vim $HOME/TODO/TODO-work.txt"
alias tdp="vim $HOME/TODO/TODO-play.txt"
alias ckr="killall conky && conky && conky -c $HOME/.work-todo.conkyrc && conky -c $HOME/.play-todo.conkyrc"
alias UOB='rdesktop sscmsecuredesktop.cse.bris.ac.uk -d UOB -g 90%'
alias d2k='mount /mnt/networkfs/D2K'
alias myfiles='mount /mnt/networkfs/myfiles'
alias ud2k='umount /mnt/networkfs/D2K'
alias umyfiles='umount /mnt/networkfs/myfiles'
