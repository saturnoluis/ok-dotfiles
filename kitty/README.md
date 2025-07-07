# Kitty

The fast, GPU based terminal emulator.

## How to install

Follow the instructions on the official Kitty website:
https://sw.kovidgoyal.net/kitty/binary/

```bash
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
```

## How to set-up

Create a symlink to the `kitty` folder in this repository to your
`.config` folder in your home directory:

```bash
ln -s ~/<path_to_repo>/ok-dotfiles/kitty ~/.config/kitty
```

Copy the desktop launcher file to your local applications folder:

```bash
cp ~/<path_to_repo>/ok-dotfiles/kitty/kitty.desktop ~/.local/share/applications/
```


