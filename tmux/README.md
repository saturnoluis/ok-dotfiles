# tmux

Tmux is a terminal multiplexer, allowing you to switch easily between several
programs in one terminal, detach them and reattach them later.

## Installation

### Ubuntu/Debian

```bash
sudo apt install tmux
```
### Fedora

```bash
sudo dnf install tmux
```

### Arch Linux

```bash
sudo pacman -S tmux
```

## Use the config file from this repository

You can copy the `.tmux.conf` file from this repository to your home directory,
but what I ussally do is create a symlink of the tmux folder in this repo to the
.config folder in my home directory.

```bash
ln -s ~/<path_to_repo>/ok-dotfiles/tmux ~/.config/tmux
```

This config file uses the awesome-tmux plugin manager, it is already set up in
the `.tmux.conf` file. You can install the plugins by pressing `Ctrl-b I`.

**Awesome-tmux:** https://github.com/rothgar/awesome-tmux 

## Chatsheet

| Keybinding | Action               |
| ---------- | -------------------- |
| Ctrl-b I   | Install tmux plugins |

