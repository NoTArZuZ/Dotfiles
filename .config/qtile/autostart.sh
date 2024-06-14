#!/usr/bin/env bash
picom --vsync -b &
feh --bg-scale $(cat $HOME/.cache/wallcache) &
