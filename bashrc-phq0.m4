m4_include(bashrc-common)

# ssh
alias ccserver='until ssh at@phq2; do sleep 15; done'
alias server='ssh at@phq2'
alias xxserver='ssh at@phq2 sudo shutdown -p now'
alias daily_backup='ssh root@phq2 "cd /home/at/Dev/backup-server && ./daily-phq0.sh"'
alias all_backup='ssh root@phq2 "cd /home/at/Dev/backup-server && ./all-phq0.sh"'
# vnc
alias servervnc='server vncserver -depth 24 -geometry 1366x768'
alias xxservervnc='server vncserver -kill :1'
# misc
alias ls='ls --color=auto -lh'
alias lsa='ls --color=auto -lha'
alias du='du -h --all --max-depth=1'
alias atgpg="gpg --encrypt --recipient 'Andrew Turner' ${1}"
alias td="vim $HOME/Dropbox/TODO/TODO.txt"
alias ckr="killall conky && conky && conky -c /home/ajt/Dropbox/TODO/conkyrc-todo"

## functions
wakeserver() {
    wol 30:85:a9:3c:4e:3d 
    sleep 200
    if ping -c 1 phq2 > /dev/null 2>&1; then
        echo 'Server online.'
        echo '>> START ZFS!'
        ssh at@phq2
    else
        echo 'Server offline.'
    fi
}

start_vm() {
    local server_name=$1
    if ping -c 1 phq2 > /dev/null 2>&1; then
        echo "Host server online."
        ssh at@phq2 "VBoxManage startvm $server_name --type headless"
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
    rsync -zavmHAX "$1" at@phq2:/home/at/Downloads
}

# systemd shortcuts
startd() {
    sudo systemctl start $1.service
    sudo systemctl status $1.service
}

restartd() {
    sudo systemctl restart $1.service
    sudo systemctl status $1.service
}

stopd() {
    sudo systemctl stop $1.service
    sudo systemctl status $1.service
}

enabled() {
    sudo systemctl enable $1.service
    ls -l /etc/systemd/system/multi-user.target.wants
}

disabled() {
    sudo systemctl disable $1.service
    ls -l /etc/systemd/system/multi-user.target.wants
}

listd() {
    ls -hl /etc/systemd/system/multi-user.target.wants
}

statusd() {
    sudo systemctl status $1.service
}
