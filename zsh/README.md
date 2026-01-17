# ZSH

To install ZSH, run the following command:

**Ubuntu/Debian:**
```bash
sudo apt install zsh
```

**Fedora:**
```bash
sudo dnf install zsh
```

**Arch Linux:**
```bash
sudo pacman -S zsh
```

After installing ZSH, you can change your default shell to ZSH by running:

```bash
chsh -s $(which zsh)
```

# Install Oh My Zsh

To install Oh My Zsh, run the following command:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

# Use my .zshrc file

After cloning this repository, you can use my `.zshrc` file by copying it to
your home directory:

```bash
cp ~/<path_to_repo>/ok-dotfiles/zsh/dot.zshrc ~/.zshrc
```

