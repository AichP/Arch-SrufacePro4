#!/bin/bash
if [ "$(playerctl status 2> /dev/null )" = "Playing" ]; then
  title=`exec playerctl metadata xesam:title`
  artist=`exec playerctl metadata xesam:artist`
  echo " $title - $artist"
elif [ "$(playerctl status 2> /dev/null )" = "Paused" ]; then
  echo " "
else
  echo " "
fi

