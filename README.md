# Dotfiles
NoTArZuZ's dotfiles for NixOS 24.05
Heavily inspired by DistroTube

![Screenshot](https://cdn.discordapp.com/attachments/836500386390605846/1251149097579184189/1718367567.png?ex=666d86e6&is=666c3566&hm=22cdff7179c33e81e0af066b76f3d87c9fd0b0bdb8aa9b55fe15fb74493bbf28&)

> [!WARNING]
> Configured for AMD CPU and AMD GPU

> [!IMPORTANT]
> There's also xfce4 installed. So choose "none+qtile" in lightdm (if you not turned it off).

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
```

## Keybinds:

| Keys                 | Description                            |
| -------------------- | -------------------------------------- |
| Super + Enter        | Launch st                              |
| Super + w            | Kill focused window                    |
| Super + ctrl + q     | Shutdown qtile                         |
| Super + ctrl + r     | Reload qtile config                    |
| Super + Tab          | Cycle qtile layouts                    |
| Super + 1-5          | Switch to workspace                    |
| Super + Shift + 1-5  | Move window to workspace               |
| Super + hjkl         | Move focus right down up left          |
| Super + Shift + hjkl | Move focused window right down up left |
| Super + t            | Toggle window floating                 |
| Super + e            | Launch st with ranger                  |
| Super + b            | Launch firefox                         |
| Super + r            | Launch dmenu_run                       |
| Super + g            | Launch dmenu script hub                |
| and more!            | See config.py                          |

## Installed packages:

| Package                 | Description                                   |
| ----------------------- | --------------------------------------------- |
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
| mpd and ncmpcpp         | Music                                         |
| dmenu (DistroTube fork) | Suckless menus                                |
| st (Luke Smith fork)    | Suckless terminal emulator                    |
| and more!               | See ~/.config/qtile/vars or configuration.nix |
