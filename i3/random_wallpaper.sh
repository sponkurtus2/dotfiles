#!/bin/bash

WALLPAPER=$(find ~/Pictures/cozy_v2/ -type f -name "*.jpg" | shuf -n 1)

feh --bg-scale "$WALLPAPER"
