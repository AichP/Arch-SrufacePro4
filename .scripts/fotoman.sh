#!/bin/bash
for pic in /home/aich/Pictures/BadHofgastein/*; do
	echo $pic
	feh -q. $pic &
  	PID=$!
 	read -p "delete pic??" yn
    	case $yn in
        	[Yy]* ) echo "deleting"
			rm $pick
			kill $PID;;
        	[Nn]* ) kill $PID;;
        	* ) echo "Please answer yes or no.";;
    	esac
done

