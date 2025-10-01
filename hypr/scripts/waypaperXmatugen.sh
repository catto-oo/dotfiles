#!/bin/bash

WALLPAPER="$1"

if [ -z "$WALLPAPER" ]; then
    exit 1
fi

walsetter "$WALLPAPER"