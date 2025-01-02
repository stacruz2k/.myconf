#!/bin/sh
setxkbmap -layout us,latam -variant intl, -option grp:win_space_toggle
xrandr --output HDMI-1-0 --auto --right-of eDP-1
feh --bg-fill /home/jsc/Pictures/Wallpapers/wallpaperflare.com_wallpaper3.jpg
dwmblocks &
exec dwm
