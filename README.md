# Dotfiles

NoTArZuZ's dotfiles for NixOS 24.05 Heavily inspired by DistroTube.

<div align="center"><table><tr><td>DoomOne</td><td>Nord</td></tr><tr><td>
<img src="https://cdn.discordapp.com/attachments/836500386390605846/1256301450225778708/1719595604.png?ex=66804566&is=667ef3e6&hm=20a66d6150142dcf49b7b6674882fe0fc2acbb7b57b0bc000fb05b831e33250c&"/></td><td>
<img src="https://cdn.discordapp.com/attachments/836500386390605846/1256301449479065600/1719595571.png?ex=66804566&is=667ef3e6&hm=7c8cf9cdafe24c08201240b9b32ffbf8629f9128f2e1a8fc1c7143ab152709ad&"/></td></tr>
<tr><td>Gruvbox</td><td>Catppuccin Mocha</td></tr><tr><td>
<img src="https://cdn.discordapp.com/attachments/836500386390605846/1256301451282743367/1719595675.png?ex=66804566&is=667ef3e6&hm=edd7892bb6c7dd3bf03624f768fbed6ace68ffadfcf1dd53eb8c9f3564f380e5&"/></td><td>
<img src="https://cdn.discordapp.com/attachments/836500386390605846/1256301450821107732/1719595635.png?ex=66804566&is=667ef3e6&hm=6d577e265226d7ed07393da74dc3fb79a13d34daf5dbda616a5b4fc77114cb4e&"/></td></tr>
<tr><td>Dracula</td><td>Everforest</td></tr><tr><td>
<img src="https://cdn.discordapp.com/attachments/836500386390605846/1256301452305891510/1719595744.png?ex=66804567&is=667ef3e7&hm=4e448d601f43cbf2092f10a389f7525c34c1c6d2e7306976e26dc0050f5cc857&"/></td><td>
<img src="https://cdn.discordapp.com/attachments/836500386390605846/1256301451823677542/1719595704.png?ex=66804567&is=667ef3e7&hm=53764e9890ef8c51d3ad70ebfb3c5ed20934ccd9af6dd91d619fa6808d1175bc&"/></td></tr>
</table></div>

> [!WARNING]
> Configuration made for AMD CPU, AMD GPU and wired internet connection.
> Change configuration.nix/hardware-configuration.nix before rebuilding to match your hardware.

## Installation:

> [!IMPORTANT]
> Before rebuilding.
> Be sure your hostname is **nixos** and username is **sus** (if you don't have a user create one and set password).
> Or change username/hostname everywhere.

```
git clone --single-branch --branch main https://github.com/NoTArZuZ/Dotfiles ~/Dotfiles
cd ~/Dotfiles/nix-cfg
sudo nixos-rebuild switch --flake .
cd ~/Dotfiles
stow --adopt .
```

And then reboot!

## Updating:

```
cd ~/Dotfiles/nix-cfg
git pull
sudo nixos-rebuild switch --flake .
cd ~/Dotfiles
stow --adopt .
```

## Keybinds:

| Keys                 | Action                                 |
| -------------------- | -------------------------------------- |
| Super + Enter        | Launch st                              |
| Super + w            | Kill focused window                    |
| Super + Ctrl + q     | Shutdown qtile                         |
| Super + Ctrl + r     | Reload qtile config                    |
| Super + Shift + b    | Toggle bar                             |
| Super + Tab          | Cycle qtile layouts                    |
| Super + 1-5          | Switch to workspace                    |
| Super + Shift + 1-5  | Move window to workspace               |
| Super + hjkl         | Move focus left down up right          |
| Super + Shift + hjkl | Move focused window left down up right |
| Super + t            | Toggle window floating                 |
| Super + e            | Launch st with yazi                    |
| Super + b            | Launch firefox                         |
| Super + r            | Launch dmenu_run                       |
| Super + Ctrl + Enter | Run .desktop app                       |
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

Some scripts will only work on nixos and require these directories:

* ~/Pictures/Wallpapers
* ~/Pictures/Screenshots
* ~/Notes
* ~/Music
* ~/Videos

## Installed packages:

| Package                                        | Description                                   |
| ---------------------------------------------- | --------------------------------------------- |
| stow                                           | Dotfiles manager (You can easily update them) |
| qtile (on X11)                                 | The best tiling WM ever IMO                   |
| firefox                                        | Based web browser                             |
| fish                                           | A shell without massive configs               |
| helix                                          | Best editor IMO                               |
| fastfetch                                      | Better than neofetch                          |
| vesktop                                        | Discord with plugins                          |
| pavucontrol                                    | GUI volume control                            |
| picom                                          | For vsync and transparency                    |
| yazi                                           | TUI file manager                              |
| nsxiv                                          | Best image viewer IMO                         |
| feh                                            | To set wallpapers                             |
| obs-studio                                     | To record videos                              |
| vlc                                            | Media player                                  |
| dunst                                          | Notification daemon                           |
| zoxide                                         | Better than cd                                |
| davinci-resolve                                | The only video editor on linux                |
| starship                                       | Fancy shell prompt                            |
| eza                                            | Fancy ls, ll and tree replacement             |
| mpd and ncmpcpp                                | Music                                         |
| [dmenu](https://github.com/NoTArZuZ/dmenu-sus) | Suckless menus                                |
| [st](https://github.com/NoTArZuZ/st-sus)       | Suckless terminal emulator                    |
| and more!                                      | See ~/.config/qtile/vars or configuration.nix |

## TODO:
* Add more themes?
