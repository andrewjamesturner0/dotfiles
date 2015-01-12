m4_include(bash/common)
m4_include(bash/common.linux)
m4_include(bash/archlinux.generic)

if [[ -f .bashrc.priv ]]; then
    . .bashrc.priv
fi

# ssh
alias daily_backup='ssh root@phq2 "cd /home/ajt/Dev/backup-server && ./daily-phq0.sh"'
alias all_backup='ssh root@phq2 "cd /home/ajt/Dev/backup-server && ./all-phq0.sh"'

# misc
alias atgpg="gpg --encrypt --recipient 'Andrew Turner' ${1}"
alias tdw="vim $HOME/TODO/TODO-work.txt"
alias tdp="vim $HOME/TODO/TODO-play.txt"
alias ckr="killall conky && conky && conky -c $HOME/.work-todo.conkyrc && conky -c $HOME/.play-todo.conkyrc"
alias youtube-dl="youtube-dl --restrict-filenames --output '%(title)s.%(ext)s'"
alias UOB='rdesktop sscmsecuredesktop.cse.bris.ac.uk -d UOB -g 90%'

## functions
start_vm() {
    local server_name=$1
    if ping -c 1 phq2 > /dev/null 2>&1; then
        echo "Host server online."
        ssh ajt@phq2 "VBoxManage startvm $server_name --type headless"
    else
        echo "Host server offline."
    fi
}

lvms() {
    sudo pvs
    echo "---"
    sudo vgs
    echo "---"
    sudo lvs
}

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

