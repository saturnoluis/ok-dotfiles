# My dotfiles

### Must-have applications

I install these programs using the default package manager of the OS.

- `curl`      - command line tool for transferring data with URLs
- `git`       - distributed version control system
- `ranger`    - terminal file manager
- `ssh`       - secure shell client for remote connections
- `vim`       - text editor
- `tree`      - show the current working directory as a tree
- `ripgrep`   - grep program

--------------------------------------------------------------------------------

## How to install Node.js (via nvm)

I like to install node using `nvm` (Node Version Manager). To install it follow
the instructions in the official github repository.

https://github.com/nvm-sh/nvm

In the "readme" of the repository you can find the "Install & Update Script".

Simply run it in your terminal, restart the terminal, and then run `nvm use` to
install whichever version of Node.js you want to use.

--------------------------------------------------------------------------------

## How to install Docker (on Ubuntu)

I only use docker on Ubuntu for work and for it, the simplest installation
method I found is just following the steps documented in the official Docker
documentation for Ubuntu.

**Read**: https://docs.docker.com/engine/install/ubuntu/

Here are the steps, but is important to check the official documentation first
as this may change over time!

- First, make sure the system is updated.

```bash
sudo apt update && sudo apt upgrade
```

- Install pre-requisites (these should be already installed)

```bash
sudo apt-get install ca-certificates curl
```

- Add the Docker GPG key

```bash
sudo install -m 0755 -d /etc/apt/keyrings
```

```bash
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
```

```bash
sudo chmod a+r /etc/apt/keyrings/docker.asc
```

- Add the Docker repository to APT sources

```bash
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

```bash
sudo apt update
```

- Create the docker group and add your user to it

```bash
sudo groupadd docker
```

```bash
sudo usermod -aG docker $USER
```

- Install the Docker packages

```bash
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

- Restart the system, in my experience is better to do shutdown instead of reboot

```bash
sudo shutdown -h 0
```

- Test the installation

After the system is back up, you can test if docker is working by running:

```bash
docker run hello-world
```

--------------------------------------------------------------------------------

## Other important stuff to remember

### Configure git

- Set your name and email

```bash
git config --global user.name "Your Name"
git config --global user.email "email@domain.com"
```

- Set the default editor to nvim

```bash
git config --global core.editor "nvim"
```

- Set the default branch name to "main"

```bash
git config --global init.defaultBranch main
```

### Install nerd fonts

The kitty config and the neo-tree plugin require the following nerd fonts to be
installed:

- [Fira Code Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip)
- [Symbols Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/NerdFontsSymbolsOnly.zip)

More here: https://www.nerdfonts.com/

To install them, simply download the zip files and extract them to your
`~/.local/share/fonts` folder.
