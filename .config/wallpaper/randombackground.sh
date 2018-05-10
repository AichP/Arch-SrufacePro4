#!/bin/bash
files=(/home/aich/.config/wallpaper/wallpapers*)
wallpaper=$(printf "%s\n" "${files[RANDOM % ${#files[@]}]}")
#echo $wallpaper

#rm /usr/share/lightdm-webkit/themes/archsingle/background.jpg
#cp $wallpaper /usr/share/lightdm-webkit/themes/archsingle/background.jpg
feh --bg-scale $wallpaper

