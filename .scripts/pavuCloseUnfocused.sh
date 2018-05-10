#!/bin/bash
pavucontrol &
sleep 1
ispavu=true
while $ispavu
do
window=$(xdotool getwindowfocus getwindowname)

if [ ! "$window" = "Volume Control" ]; then
pkill pavucontrol
ispavu=false
fi
sleep 0.2 
done


