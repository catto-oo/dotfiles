#!usr/bin/env bash

CITY=$(grep -oP '^\s*\$CITY\s*=\s*\K.+' ~/.config/hypr/hyprland/hyprlock.conf | xargs)
COUNTRY=$(grep -oP '^\s*\$COUNTRY\s*=\s*\K.+' ~/.config/hypr/hyprland/hyprlock.conf | xargs)

if [[ -z "$CITY" || -z "$COUNTRY" ]]; then
    echo "idk where you are man"
    exit 1
fi

weather_info=$(curl -s --fail "https://en.wttr.in/$CITY?format=%c+%t" 2>/dev/null)

if [[ $? -ne 0 || -z "$weather_info" ]]; then
    echo "ngl idk the weather in $CITY"
    exit 1
fi

echo "$weather_info"