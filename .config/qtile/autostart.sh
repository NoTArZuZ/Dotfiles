#!/usr/bin/env bash
$HOME/.config/qtile/scripts/theme-changer -r
systemctl --user start polkit-gnome-authentication-agent-1 & 
picom --vsync -b &
feh --bg-scale $HOME/.cache/wallcache &
