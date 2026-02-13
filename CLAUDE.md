# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal dotfiles repository managing bash, vim, tmux, and git configurations using M4 macro preprocessing to avoid duplication.

## Build System

Configs are generated via M4 and symlinked to `$HOME`. The Makefile defines per-machine targets:

```bash
make archlinux  # Arch Linux machines
make ubuntu     # Ubuntu machines
```

Each target processes `.m4` files through M4 (which `include()` shared common files), outputs to `GENERATED/`, and symlinks results to `~/.bashrc`, `~/.vimrc`, etc. `tmux.conf` and `gitconfig` are symlinked directly without M4 processing.

## Architecture

Machine-specific `.m4` files in `bash/` and `vim/` compose configurations by including shared fragments:

- `bash/common` — core aliases, functions, prompt, history, Linux settings (shared across all machines)
- `bash/archlinux.generic` — Arch pacman aliases, gnome keyring
- `bash/ubuntu.generic` — Ubuntu apt alias
- `bash/<distro>.m4` — distro entry points that include the above
- `vim/common` — core vim settings, custom functions (ProseMode, TrimWhiteSpace)
- `vim/<distro>.m4` — distro entry points

The M4 `include()` mechanism means editing a `common` file affects all machines that include it, while `.m4` files control which fragments are composed for each machine.
