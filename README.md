# dotfiles

Personal dotfiles for bash, vim, tmux, and git. Uses [M4](https://www.gnu.org/software/m4/) to compose machine-specific configs from shared fragments, avoiding duplication.

## Setup

```bash
make tourmalet  # Arch Linux (primary machine)
make ubuntu     # Ubuntu VMs
```

This generates configs into `GENERATED/`, then symlinks them to `$HOME`:

| Source | Symlink |
|---|---|
| `GENERATED/<machine>.bashrc` | `~/.bashrc` |
| `GENERATED/<machine>.vimrc` | `~/.vimrc` |
| `tmux.conf` | `~/.tmux.conf` |
| `gitconfig` | `~/.gitconfig` |

Run `make clean` to remove generated files.

## How it works

Each machine has a `.m4` entry point (e.g. `bash/tourmalet.m4`) that includes shared fragments:

```
bash/tourmalet.m4
 ├── bash/common            # aliases, functions, prompt, history
 ├── bash/common.linux      # ls colors, pandoc, R
 └── bash/archlinux.generic # pacman aliases

bash/ubuntu.m4
 ├── bash/common
 ├── bash/common.linux
 └── bash/ubuntu.generic    # apt aliases
```

Vim follows the same pattern with `vim/common` as the shared base.

Edit `common` files to change behaviour across all machines. Edit `.m4` files to add machine-specific config. Private/sensitive config goes in `~/.bashrc.priv` (sourced if present, not tracked).
