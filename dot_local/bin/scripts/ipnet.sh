#!/bin/sh
ip=$(ip -f inet address | awk /inet/'{print $2}' | awk 'FNR == 3')
icon=""
printf "%s %s\\n" "$icon" "$ip"

