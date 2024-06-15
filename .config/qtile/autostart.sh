#!/usr/bin/env bash
systemctl --user start polkit-gnome-authentication-agent-1 & 
picom --vsync -b &
feh --bg-scale $(cat $HOME/.cache/wallcache) &
