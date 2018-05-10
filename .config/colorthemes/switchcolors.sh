#!/bin/bash

xorig="/home/aich/.Xresources"
termorig="/home/aich/.config/termite/config"
i3orig="/home/aich/.config/i3/config"

if [ $1 = "blue" ]
then
	xres="/home/aich/.config/colorthemes/Xblue"
	term="/home/aich/.config/colorthemes/termblue"
	i3="/home/aich/.config/colorthemes/i3blue"
	background="/home/aich/.config/colorthemes/backgrounds/blue.jpg"
elif [ $1 = "red" ]
then
	xres="/home/aich/.config/colorthemes/Xred"
	term="/home/aich/.config/colorthemes/termred"
	i3="/home/aich/.config/colorthemes/i3red"
	background="/home/aich/.config/colorthemes/backgrounds/red.png"
elif [ $1 = "green" ]
then
	xres="/home/aich/.config/colorthemes/Xgreen"
	term="/home/aich/.config/colorthemes/termgreen"
	i3="/home/aich/.config/colorthemes/i3green"
	background="/home/aich/.config/colorthemes/backgrounds/green.jpg"
elif [ $1 = "yellow" ]
then
	echo "yellow"
fi

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

feh --bg-scale $background
cp $background /home/aich/.config/wallpaper/wallpapers/wall1.jpg
xrdb ~/.Xresources
killall -USR1 termite
i3-msg reload
