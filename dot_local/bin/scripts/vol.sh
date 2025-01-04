#!/bin/sh

vol=$(pactl get-sink-volume @DEFAULT_SINK@ | sed -nr '1 s/[^/]*\/\s*([0-9]+%).*/\1/ p')
icon=""

printf "%s %s\\n" "$icon" "$vol"

