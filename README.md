# Dotfiles
NoTArZuZ's dotfiles for NixOS 24.05
Heavily inspired by DistroTube

![Screenshot](https://cdn.discordapp.com/attachments/836500386390605846/1251149097579184189/1718367567.png?ex=666d86e6&is=666c3566&hm=22cdff7179c33e81e0af066b76f3d87c9fd0b0bdb8aa9b55fe15fb74493bbf28&)

## Installation:

> [!WARNING]
> Configured for AMD CPU and AMD GPU

```
git clone https://github.com/NoTArZuZ/Dotfiles ~/Dotfiles
mv ~/Dotfiles/nix-cfg ~/nix-cfg
cd nix-cfg
sudo nixos-rebuild switch --flake .
```

After rebuilding NixOS:

```
cd ~/Dotfiles
stow --adopt .
```

> [!IMPORTANT]
> There's also xfce4 installed. So choose "none+qtile" in lightdm (if you not turned it off).

## Installed packages:

| Package         | Description                                   |
| --------------- | --------------------------------------------- |
| qtile (on X11)  | The best tiling WM ever IMO                   |
| firefox         | Based web browser                             |
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
