# My neovim config

## About this

--------------------------------------------------------------------------------

## Installed plugins

**Plugin Manager**
lazy.nvim: https://lazy.folke.io/

**Plugins:**

- copilot: https://github.com/github/copilot.vim
- cutlass: https://github.com/gbprod/cutlass.nvim
- git-blame: https://github.com/f-person/git-blame.nvim
- gitsigns: https://github.com/lewis6991/gitsigns.nvim
- kanagawa: https://github.com/rebelot/kanagawa.nvim
- mason: https://github.com/mason-org/mason.nvim
- move: https://github.com/fedepujol/move.nvim
- neo-tree: https://github.com/nvim-neo-tree/neo-tree.nvim
- nvim-cmp: https://github.com/hrsh7th/nvim-cmp
- nvim-treesitter: https://github.com/nvim-treesitter/nvim-treesitter
- telescope: https://github.com/nvim-telescope/telescope.nvim

## Mason LSP servers used

Check the following link for more information:
https://github.com/neovim/nvim-lspconfig/tree/master/lsp

**Configured LSP servers:**

These are the LSP servers I have configured in my neovim setup, each of them
need to be manually installed using the `:Mason` command in neovim or following
the instructions located in each of the files located in the `lsp` folder.

- eslint-lsp
- emmet-ls
- html-lsp
- lua-language-server

--------------------------------------------------------------------------------

## How to install nvim

There are several "official" ways to install neovim. The one I like the most
and works for me is using the prebuild `tar` file for Linux. 

The steps are described below, use the following link for more information:
https://github.com/neovim/neovim/blob/master/INSTALL.md

```bash
sudo rm -rf /opt/nvim
# This is not necessary if you are installing neovim for the first time.

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
# The -LO flag tells curl to follow redirects and save the file with the same name

sudo tar -C /opt -xzf nvim-linux64.tar.gz
# The -C flag stands for "change directory" and -xzf tells tar to extract the file
```

After this step, you should add the binary to your PATH. (This path is already
present in the .zshrc file found in this repo).

```bash
export PATH="/opt/nvim-linux64/bin:$PATH"
```

Finally make a symbolic link to use this repo as the config folder for neovim:

**Important:** Before adding the dotfiles configs, is best to install the required
system and npm dependencies, see instructions below.

```bash
ln -s ~/<path_to_repo>/ok-dotfiles/nvim ~/.config/nvim
```

--------------------------------------------------------------------------------

## Required system and npm dependencies for this neovim config

### System 

- **Lua and LuaRocks**

```bash
sudo apt install lua5.4 luarocks -y  # Ubuntu
sudo dnf install lua lua-luarocks -y # Fedora
```

- **ripgrep** - A fast text search tool, used by telescope.nvim.

```bash
sudo apt install ripgrep -y # Ubuntu
sudo dnf install ripgrep -y # Fedora
```

- **fd** - A simple, fast and user-friendly alternative to `find`.

```bash
sudo apt install fd-find -y # Ubuntu
sudo dnf install fd-find -y # Fedora
```

### NPM

- **vscode-langservers-extracted** - HTML/CSS/JSON/ESLint lang servers.

```bash
npm i -g vscode-langservers-extracted
```

- **Tree-sitter CLI** - Allows to use tree-sitter from the command line.

```bash
npm i -g tree-sitter-cli
```

- **emmet-ls** - Emmet support based on LSP

```bash
npm i -g emmet-ls
```

--------------------------------------------------------------------------------

## What I like most about neovim

- The different modes.
- Keyboard driven.
- Lightweight.
- No bloatware at all.
- Terminal-based.
- Customizable (DIY).

--------------------------------------------------------------------------------

## Cheatsheet

### Handy commands

| Command    | Description                                           |
| ---------- | ----------------------------------------------------- |
| :so %      | Reload the current config file                        |
| :TSInstall | Install a treesitter parser for the current file type |

## Keybindings

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
