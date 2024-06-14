# Dotfiles
NoTArZuZ's dotfiles for NixOS 24.05

## Installation:

> [!WARNING]
> Configured for AMD CPU and AMD GPU

```
mv ~/Dotfiles/nix-cfg ~/nix-cfg
cd nix-cfg
sudo nixos-rebuild switch --flake .
```

After rebuilding NixOS:

```
cd ~/Dotfiles
stow --adopt .
```

## Installed packages:

| Package         | Description                                   |
| --------------- | --------------------------------------------- |
| qtile           | The best tiling WM ever IMO                   |
| fish            | A shell without massive configs               |
| helix           | Best editor IMO                               |
| fastfetch       | Better than neofetch                          |
| vesktop         | Discord with plugins                          |
| pavucontrol     | GUI volume control                            |
| picom           | For vsync and transparency                    |
| ranger          | TUI file manager                              |
| nsxiv           | Best image viewer IMO                         |
| feh             | To set wallpapers                             |
| obs-studio      | To record videos                              |
| dunst           | Notification daemon                           |
| zoxide          | Better than cd                                |
| davinci-resolve | The only video editor on linux                |
| starship        | Fancy shell prompt                            |
| mpd and ncmpcpp | Music                                         |
| dmenu           | Suckless menus                                |
| st              | Suckless terminal emulator                    |
| and more!       | See ~/.config/qtile/vars or configuration.nix |
