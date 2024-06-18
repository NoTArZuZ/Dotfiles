#!/usr/bin/env bash
xrdb -merge ~/.Xresources
systemctl --user start polkit-gnome-authentication-agent-1 & 
picom --vsync -b &
feh --bg-scale $HOME/.cache/wallcache &
