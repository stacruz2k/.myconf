#!/bin/sh

mem=$(free -h | awk '/^Mem/ { print $3"/"$2 }' | sed s/i//g)
icon=''

printf "%s %s\\n" "$icon" "$mem"

