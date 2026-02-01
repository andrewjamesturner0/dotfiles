m4_include(bash/common)
m4_include(bash/common.linux)
m4_include(bash/archlinux.generic)

if [[ -f .bashrc.priv ]]; then
    . .bashrc.priv
fi

# gnome keyring
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/keyring/ssh"
