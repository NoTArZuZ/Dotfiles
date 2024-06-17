# Dotfiles
NoTArZuZ's dotfiles for NixOS 24.05
Heavily inspired by DistroTube.

![Screenshot](https://cdn.discordapp.com/attachments/836500386390605846/1251149097579184189/1718367567.png?ex=666d86e6&is=666c3566&hm=22cdff7179c33e81e0af066b76f3d87c9fd0b0bdb8aa9b55fe15fb74493bbf28&)

> [!IMPORTANT]
> Configuration made for AMD CPU, AMD GPU and wired internet connection.
> Change configuration.nix/hardware-configuration.nix before rebuilding to match your hardware.

## Installation:

```
git clone https://github.com/NoTArZuZ/Dotfiles ~/Dotfiles
mv ~/Dotfiles/nix-cfg ~/nix-cfg
cd ~/nix-cfg
sudo nixos-rebuild switch --flake .
```

After rebuilding NixOS:

```
cd ~/Dotfiles
stow --adopt .
```

And then reboot!

## Updating

```
cd ~/Dotfiles/nix-cfg
git pull
sudo nixos-rebuild switch --flake .
cd ..
stow .
```

## Keybinds:

| Keys                 | Description                            |
| -------------------- | -------------------------------------- |
| Super + Enter        | Launch st                              |
| Super + w            | Kill focused window                    |
| Super + Ctrl + q     | Shutdown qtile                         |
| Super + Ctrl + r     | Reload qtile config                    |
| Super + Tab          | Cycle qtile layouts                    |
| Super + 1-5          | Switch to workspace                    |
| Super + Shift + 1-5  | Move window to workspace               |
| Super + hjkl         | Move focus left down up right          |
| Super + Shift + hjkl | Move focused window left down up right |
| Super + t            | Toggle window floating                 |
| Super + e            | Launch st with ranger                  |
| Super + b            | Launch firefox                         |
| Super + r            | Launch dmenu_run                       |
| Super + g            | Launch dmenu script hub                |
| Super + Shift + n    | Send previous notification             |
| and more!            | See ~/.config/qtile/config.py          |

## Installed packages:

| Package                 | Description                                   |
| ----------------------- | --------------------------------------------- |
| stow                    | Dotfiles manager (You can easily update them) |
| qtile (on X11)          | The best tiling WM ever IMO                   |
| firefox                 | Based web browser                             |
| fish                    | A shell without massive configs               |
| helix                   | Best editor IMO                               |
| fastfetch               | Better than neofetch                          |
| vesktop                 | Discord with plugins                          |
| pavucontrol             | GUI volume control                            |
| picom                   | For vsync and transparency                    |
| ranger                  | TUI file manager                              |
| nsxiv                   | Best image viewer IMO                         |
| feh                     | To set wallpapers                             |
| obs-studio              | To record videos                              |
| vlc                     | Media player                                  |
| dunst                   | Notification daemon                           |
| zoxide                  | Better than cd                                |
| davinci-resolve         | The only video editor on linux                |
| starship                | Fancy shell prompt                            |
| eza                     | Fancy ls, ll and tree replacement             |
| mpd and ncmpcpp         | Music                                         |
| dmenu (My fork)         | Suckless menus                                |
| st (My fork)            | Suckless terminal emulator                    |
| and more!               | See ~/.config/qtile/vars or configuration.nix |

## TODO:
* Write theme-changer script
* Integrate wallust
