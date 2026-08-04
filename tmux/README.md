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

The config lives at `~/.config/tmux/tmux.conf`, which tmux 3.1+ reads
automatically. The simplest way to use it is to symlink this folder there:

```bash
ln -s ~/<path_to_repo>/ok-dotfiles/tmux ~/.config/tmux
```

### Prerequisites

The config uses the [Tmux Plugin Manager (TPM)](https://github.com/tmux-plugins/tpm)
and it is already wired up in `tmux.conf`. The plugins are also vendored in the
`plugins/` folder of this repo, so they work out of the box after the symlink.
If you start from a clean checkout, make sure TPM is present:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

Then reload the config (`prefix r`) and install the plugins with `prefix I`.

For more curated plugins and ideas, check out:
https://github.com/rothgar/awesome-tmux

## Cheatsheet

| Keybinding     | Action                              |
| -------------- | ----------------------------------- |
| Ctrl-b         | Prefix                              |
| Ctrl-b r       | Reload the config file              |
| Ctrl-b c       | Create a new window                 |
| Ctrl-b n       | Create a new window                 |
| Ctrl-b |       | Split pane horizontally             |
| Ctrl-b -       | Split pane vertically               |
| Ctrl-b p       | Open a popup in the current dir     |
| Ctrl-b h/j/k/l | Select pane left/down/up/right      |
| Ctrl-b H/J/K/L | Resize pane (10 cells)              |
| Ctrl-b [       | Enter copy mode                     |
| Ctrl-b I       | Install tmux plugins                |
| Alt-1..9,0     | Switch to window 1..10              |

