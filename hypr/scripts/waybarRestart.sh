#!/bin/bash

killall -9 waybar
killall -9 swaync

waybar &
swaync &

notify-send --app-name=HOME -i ~/.config/hypr/fastfetch/3.jpg Miku!

