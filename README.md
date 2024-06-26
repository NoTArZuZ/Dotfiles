# Dotfiles WIP!

NoTArZuZ's dotfiles for more usual distros. Heavily inspired by DistroTube.

<div align="center"><tr>Doom One</tr>
<img src="https://cdn.discordapp.com/attachments/693827752532377641/1254125256986066974/1719077065.png?ex=66785aa9&is=66770929&hm=e26866ff54ba3db3bb5f012700552b35bec4c54f121cc78c1e789308d484e646&"/></div>

<div align="center"><table><tr><td>Gruvbox</td><td>Catppuccin Mocha</td></tr><tr><td>
<img src="https://cdn.discordapp.com/attachments/693827752532377641/1254125255220265001/1719076898.png?ex=66785aa9&is=66770929&hm=b4806c915d1c2721d196b658a3a1e76572c09a9feaf0444a48b74effa9362184&"/></td><td>
<img src="https://cdn.discordapp.com/attachments/693827752532377641/1254125255690162186/1719076934.png?ex=66785aa9&is=66770929&hm=55646c203c906c73e7ad89922f80d9c5c474575d75b4c966869241b02f54c99a&"/></td></tr>
<tr><td>Dracula</td><td>Everforest</td></tr><tr><td>
<img src="https://cdn.discordapp.com/attachments/693827752532377641/1254125256134623345/1719076979.png?ex=66785aa9&is=66770929&hm=b614f1ec6bef5d815ec1ed1563fef878baddd3bad912c04a86e382993e75f566&"/></td><td>
<img src="https://cdn.discordapp.com/attachments/836500386390605846/1254176168782073947/1719089096.png?ex=66788a14&is=66773894&hm=5efd6fa5e3552419b08f189b6de150cf67af8fcb710f2fa007cbbe2819f672d3&"/></td></tr>
</table></div>

## Installation:

```
git clone --single-branch --branch other https://github.com/NoTArZuZ/Dotfiles ~/Dotfiles
cd ~/Dotfiles
stow --adopt .
install dependencies
enable lightdm (not start)
```

And then reboot!

## Updating:

```
cd ~/Dotfiles/
git pull
stow --adopt .
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

Some scripts require these directories:

* ~/Pictures/Wallpapers
* ~/Pictures/Screenshots
* ~/Notes
* ~/Music
* ~/Videos

## Packages to install:

```
git
helix
fastfetch
discord
pavucontrol
picom
yazi
htop
nsxiv
feh
dunst
wallust
libnotify
radeontop
xclip
xdotool
maim
zoxide
translate-shell
colorpicker
starship
mpc
ncmpcpp
yt-dlp
stow
polkit-gnome
eza
curl
qtile
firefox
fish
pipewire
pipewire-pulse
pipewire-alsa
lightdm
mpd
xorg
phinger-cursors
gruvbox-dark-gtk
dracula-theme
qogir-theme
papirus-icon-theme
qogir-icon-theme
dracula-icon-theme
ttf-jetbrains-mono-nerd
ttf-iosevkaterm-nerd
ttf-mononoki-nerd
ubuntu-font-family
https://github.com/NoTArZuZ/dmenu-sus
https://github.com/NoTArZuZ/st-sus
```
