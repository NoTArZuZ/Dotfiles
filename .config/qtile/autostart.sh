#!/usr/bin/env bash
CURTHEME=DoomOne &
THEMECOL=dark &
systemctl --user start polkit-gnome-authentication-agent-1 & 
picom --vsync -b &
feh --bg-scale $HOME/.cache/wallcache &
