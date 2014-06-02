m4_include(bash/common)
m4_include(bash/archlinux.generic)

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
    rsync -zavmHAX "$1" ajt@phq2:/home/ajt/Downloads
}
