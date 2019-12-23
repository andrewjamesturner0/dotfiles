m4_include(bash/common)
m4_include(bash/common.linux)
m4_include(bash/archlinux.generic)

if [[ -f .bashrc.priv ]]; then
    . .bashrc.priv
fi

# misc
alias atgpg="gpg --encrypt --recipient 'Andrew Turner' ${1}"
alias tdp="vim $HOME/TODO/TODO-play.txt"
alias ckr="killall conky; conky && conky -c $HOME/.play-todo.conkyrc"
alias youtube-dl-audio="youtube-dl -x --audio-format mp3"
alias obs="vim $HOME/Dev/Obs/obs.csv"
alias UOB="rdesktop sscmsecuredesktop.cse.bris.ac.uk -d UOB -g 90%"

# ruby
PATH="$PATH:$(ruby -e 'print Gem.user_dir')/bin"

# gnome keyring
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/keyring/ssh"
