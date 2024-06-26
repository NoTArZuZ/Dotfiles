#!/usr/bin/env bash
xrdb -merge ~/.Xresources
xsetroot -cursor_name left_ptr
picom --vsync -b &
feh --bg-scale $HOME/.cache/wallcache &
