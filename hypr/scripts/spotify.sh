#!/bin/bash

song_info=$(playerctl metadata --format '󰎇 Playing : {{title}} - {{artist}} 󰎇')

echo "$song_info"