m4_include(bashrc-common)

# ssh
alias ccserver='until ssh at@phq2; do sleep 15; done'
alias server='ssh at@phq2'
alias xxserver='ssh at@phq2 sudo shutdown -p now'
alias ubuntustart='server "VBoxManage startvm ubuntu-1204 --type headless"'
alias ubuntu='ssh andrew@ubuntu-vb'
alias xxubuntu='server "VBoxManage controlvm ubuntu-1204 poweroff"'
# wol
alias wakeserver='wol 30:85:a9:3c:4e:3d && until ssh at@phq2; do sleep 45; done'
# vnc
alias servervnc='server "vncserver -depth 24 -geometry 1366x768"'
alias ubuntuvnc='ubuntu "vncserver -depth 24 -geometry 1366x768"'
alias xxservervnc='server "vncserver -kill :1"'
alias xxubuntuvnc='ubuntu "vncserver -kill :1"'
# misc
alias ls='ls --color=auto -lh'
alias lsa='ls --color=auto -lha'
alias du='du -h --all --max-depth=1'
alias atgpg="gpg --encrypt --recipient 'Andrew Turner' ${1}"
alias td="vim $HOME/Dropbox/TODO/TODO.txt"
alias ckr="killall conky && conky && conky -c /home/ajt/Documents/TODO/conkyrc-todo"
# functions
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
