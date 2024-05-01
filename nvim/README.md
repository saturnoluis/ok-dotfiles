# My NEOVIM config (from scratch)

## How to install

There are several "official" ways to install neovim. The one I like the most
and works for me is using the prebuild `tar` file for Linux. 

The steps are described below, use the following link for more information:
https://github.com/neovim/neovim/blob/master/INSTALL.md

```bash
sudo rm -rf /opt/nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo tar -C /opt -xzf nvim-linux64.tar.gz
```

After this step, you should add the binary to your PATH. (This path is already
present in the .zshrc file found in this repo).

```bash
export PATH="/opt/nvim-linux64/bin:$PATH"
```

Finally make a symbolic link to use this repo as the config folder for neovim:

```bash
ln -s ~/Repos/ok-configs/nvim ~/.config/nvim
```

## Required system dependencies for this neovim config

```bash
## Fedora dnf commands
sudo dnf install curl -y
sudo dnf install fd-find -y
sudo dnf install git -y
sudo dnf install nodejs
sudo dnf install ripgrep -y
sudo dnf install tree-sitter-cli
sudo dnf install xclip -y
```

## What I like most about neovim

- The different modes.
- Keyboard driven.
- Lightweight.
- No bloatware at all.
- Terminal-based.
- Customizable (DIY).

## Cheatsheet

### Insert mode

- `i` - Enter insert mode at the cursor.
- `I` - Enter insert mode at the beginning of the line.
- `a` - Enter insert mode after the cursor.
- `A` - Enter insert mode at the end of the line.
- `o` - Open a new line below the current line and enter insert mode.
- `O` - Open a new line above the current line and enter insert mode.

### Visual mode

- `v` - Enter visual mode.
- `V` - Enter linewise visual mode.
- `Ctrl-v` - Enter visual block mode. 

### Split Windows

- `:split` - Splits the current window horizontally
- `:vsplit` - Splits the current window vertically
- `Ctrl-w + h/j/k/l` - Change the current window

### Useful commands

- `:r` - Read from a source and add to current buffer.
- `:e` - Open the given file in a new buffer.
- `:enew` - Create a new buffer.
- `:term` - Open the terminal mode.
- `:Explore` - Open the file explorer.
- `:lua =` - Run a lua expression - i.e. :lua =print("hello")

### Text manipulation 

- `s` - Substitute - Deletes the selection and enters insert mode.
- `y` - Yank (copy) the selected text.
- `y` - Yank (copy) the current line.
- `d` - Delete the selected text.
- `dd` - Delete the current line.
- `P` - Paste before the cursor or above the line.
- `p` - Paste after the cursor or below the line.

### Text objects commands

- `d` - Delete.
- `c` - Change - Delete and enter insert mode.

### Motions

- `t` - To (move cursor until character, excluding it)
- `f` - Find (move cursor to character)

**Examples (the same applies to all commands):**

- `diw` - Inner word (excluding surrounding whitespace)
- `dip` - Inner paragraph (excluding surrounding whitespace)
- `di"` - Inner quotes (double, single, and backticks)
- `di{` - Inner blocks (Curly braces, parenthesis and brackets)
- `dit` - Inner HTML/XML tag (excluding surrounding whitespace)
- `dil` - Inner line (excluding leading and trailing whitespace)
