#!/bin/bash
if [[ -z "$@" ]]; then
	ps -Ao fname,pid | awk '{if (NR!=1) print $1 "  " $2}'
else
	echo $1 >> /home/aich/debug
	kill $(echo $1 | awk '{print $2}') 
fi
