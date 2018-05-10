#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 0.5; done

# Launch bar1 and bar2
FC_Debug=1 polybar vga1top &
#polybar vga2top &
#polybar progs &

echo "Bars launched.."
