# My dotfiles

### Must-have applications

I install these programs using the default package manager of the OS.

- `curl` - command line tool for transferring data with URLs
- `git` - distributed version control system
- `ssh` - secure shell client for remote connections
- `vim` - text editor to complement nvim (which I install using other method)

--------------------------------------------------------------------------------

## Development tools that I use

## Node.js (via nvm)

I like to install node using `nvm` (Node Version Manager). To install it follow
the instructions in the official github repository.

https://github.com/nvm-sh/nvm

In the "readme" of the repository you can find the "Install & Update Script".

Simply run it in your terminal, restart the terminal, and then run `nvm use` to
install whichever version of Node.js you want to use.

## Docker (via snap on Ubuntu)

I only use docker on Ubuntu for work and for it, the simplest method I found to
install it is via Snap. The snap version also includes docker compose so it's
pretty convenient.

Here are the steps:

- First, make sure the system is updated.

```bash
sudo apt update
sudo apt upgrade
```

- Install Docker via Snap

```bash
sudo snap install docker
```

- Create the docker group and add your user to it

```bash
sudo groupadd docker
sudo usermod -aG docker $USER
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

## Other tools that I use

### ranger - a terminal file manager

**Installation:**

```bash
sudo apt install ranger # Ubuntu/Debian
sudo dnf install ranger # Fedora
sudo pacman -S ranger   # Arch Linux
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


