#!/bin/bash

xorig="/home/aich/.Xresources"
termorig="/home/aich/.config/termite/config"
i3orig="/home/aich/.config/i3/config"
backgrounds=(/home/aich/.config/colorthemes/backgrounds/$1/*)

xres="/home/aich/.config/colorthemes/X$1"
term="/home/aich/.config/colorthemes/term$1"
i3="/home/aich/.config/colorthemes/i3$1"

# Change Xresources
while read i
do
	IFS=: read pointer payload <<< $i
	pointer="$pointer:"
	sedpointer="$(echo "${pointer}" | sed -e 's/[]$.*#: [\^]/\\&/g')"
	sedi="$(echo "${i}" | sed -e 's/[]$.*#: [\^]/\\&/g')"
	sed -in "/$sedpointer/c$sedi" $xorig
done <$xres

# Change Termite
while read i
do
	IFS="=" read pointer payload <<< $i
	pointer="$pointer="
	sedpointer="$(echo "${pointer}" | sed -e 's/[]$.*#: [\^]/\\&/g')"
	sedi="$(echo "${i}" | sed -e 's/[]$.*#: [\^]/\\&/g')"
	sed -in "/$sedpointer/c$sedi" $termorig
done <$term

#Change i3
while read i
do
	IFS="	" read pointer payload <<< $i
	pointer="$pointer"
	sedpointer="$(echo "${pointer}" | sed -e 's/[]$.*#: [\^]/\\&/g')"
	sedi="$(echo "${i}" | sed -e 's/[]$.*#: [\^]/\\&/g')"
	sed -in "/$sedpointer/c$sedi" $i3orig
done <$i3

wallpaper=$(printf "%s\n" "${backgrounds[RANDOM % ${#backgrounds[@]}]}")
echo $wallpaper
feh --bg-scale $wallpaper
cp $wallpaper /home/aich/.config/wallpaper/wallpapers/wall1.jpg
xrdb ~/.Xresources
killall -USR1 termite
i3-msg reload
