m4_include(bash/common)
m4_include(bash/archlinux.generic)

if [[ -f .bashrc.priv ]]; then
    . .bashrc.priv
fi

# ssh
alias xxphq2='ssh ajt@phq2 sudo shutdown -p now'
alias daily_backup='ssh root@phq2 "cd /home/ajt/Dev/backup-server && ./daily-phq0.sh"'
alias all_backup='ssh root@phq2 "cd /home/ajt/Dev/backup-server && ./all-phq0.sh"'
# misc
alias atgpg="gpg --encrypt --recipient 'Andrew Turner' ${1}"
alias tdw="vim $HOME/TODO/TODO-work.md"
alias tdp="vim $HOME/TODO/TODO-play.md"
alias tb="vim $HOME/TODO/to-buy.md"
alias ckr="killall conky && conky && conky -c /home/ajt/TODO/conkyrc-todo-work && conky -c /home/ajt/TODO/conkyrc-todo-play"
alias youtube-dl="youtube-dl --restrict-filenames --output '%(title)s.%(ext)s'"
alias UOB='rdesktop sscmsecuredesktop.cse.bris.ac.uk -d UOB -g 90%'

## functions
wakephq2() {
    wol bc:5f:f4:ca:25:ec
    sleep 200
    if ping -c 1 phq2 > /dev/null 2>&1; then
        echo 'Server online.'
        echo '>> START ZFS!'
        ssh ajt@phq2
    else
        echo 'Server offline.'
    fi
}

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

serverrsync() {
    rsync -zavmHAX "$1" ajt@phq2:/home/ajt/Downloads
}

smbon() {
    sudo systemctl start nmbd.service
    sudo systemctl start smbd.service
} 

batmax() {
    sudo /usr/lib/perl5/vendor_perl/tpacpi-bat stopChargeThreshold 0 "$1"
}

batstart() {
    sudo /usr/lib/perl5/vendor_perl/tpacpi-bat startChargeThreshold 0 "$1"
}
