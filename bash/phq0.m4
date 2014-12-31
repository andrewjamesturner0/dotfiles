m4_include(bash/common)
m4_include(bash/common.linux)
m4_include(bash/archlinux.generic)

if [[ -f .bashrc.priv ]]; then
    . .bashrc.priv
fi

# misc
alias atgpg="gpg --encrypt --recipient 'Andrew Turner' ${1}"
alias tdw="vim $HOME/TODO/TODO-work.txt"
alias tdp="vim $HOME/TODO/TODO-play.txt"
alias ckr="killall conky && conky && conky -c $HOME/.work-todo.conkyrc && conky -c $HOME/.play-todo.conkyrc"
alias youtube-dl="youtube-dl --restrict-filenames --output '%(title)s.%(ext)s'"
alias UOB='rdesktop sscmsecuredesktop.cse.bris.ac.uk -d UOB -g 90%'

## functions
smbon() {
    sudo systemctl start nmbd.service
    sudo systemctl start smbd.service
} 

batmax() {
    sudo /usr/bin/tpacpi-bat -s SP 0 "$1"
}

batstart() {
    sudo /usr/bin/tpacpi-bat -s ST 0 "$1"
}

# ruby
PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"

