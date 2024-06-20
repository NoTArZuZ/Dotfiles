# Dotfiles
NoTArZuZ's dotfiles for NixOS 24.05
Heavily inspired by DistroTube.

![Screenshot](https://cdn.discordapp.com/attachments/836500386390605846/1253417537413316648/1718908410.png?ex=6675c78c&is=6674760c&hm=844eda30ed18b7152099770d8ca6da9cb16b310ec9c3b5c099ad65d3dd3d2864&)

> [!IMPORTANT]
> Configuration made for AMD CPU, AMD GPU and wired internet connection.
> Change configuration.nix/hardware-configuration.nix before rebuilding to match your hardware.

## Installation:

```
git clone https://github.com/NoTArZuZ/Dotfiles ~/Dotfiles
cd ~/Dotfiles/nix-cfg
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
cd ~/Dotfiles
stow .
```

## Keybinds:

| Keys                 | Action                                 |
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

## Dmenu scripts:

| Script         | Description                                                               |
| -------------- | ------------------------------------------------------------------------- |
| cli-utils      | Launches terminal with CLI programs                                       |
| conf-edit      | Launches editor with config you chosen                                    |
| currency-conv  | Converts currencies (copies result to clipboard)                          |
| dunst-history  | Very bad notification viewer                                              |
| lang-translate | Translates word or sentence (copies result to clipboard)                  |
| maim-scrshot   | Screenshots using maim                                                    |
| menu-calc      | Very limited dmenu calculator (copies result to clipboard)                |
| menu-colpicker | Dmenu colorpicker (saves results to file and copies to clipboard)         |
| menu-music     | Control mpd with Dmenu through mpc                                        |
| set-bg         | Sets wallpaper using nsxiv and feh (it can also do random)                |
| temp-notes     | Create, copy, read, edit, delete notes (stored in ~/Notes)                |
| theme-changer  | Theme changer (DoomOne, CatppuccinMocha, Dracula, Gruvbox, RosePine, Wal) |
| yt-download    | Download videos or audio using yt-dlp                                     |

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
* Add more themes?
