#!/usr/bin/env bash
xrdb -merge ~/.Xresources
picom --vsync -b &
feh --bg-scale $HOME/.cache/wallcache &
