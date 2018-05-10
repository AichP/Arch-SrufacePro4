#!/bin/bash
i3-msg "exec /home/aich/.config/lock/lock.sh" 2> /dev/null 
sleep 2
pm-suspend
