m4_include(bashrc-common)

#pacman
alias cpc='sudo paccache --remove'
alias pacdiff='DIFFSEARCHPATH="/boot /etc /usr" pacdiff'
# misc
alias ls='ls --color=auto -lh'
alias lsa='ls --color=auto -lha'
alias du='du -h --all --max-depth=1'
alias atgpg="gpg --encrypt --recipient 'Andrew Turner' ${1}"

## functions
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
