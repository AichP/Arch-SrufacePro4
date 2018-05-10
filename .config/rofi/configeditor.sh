#!/bin/bash
if [[ -z "$@" ]]; then
  awk '1' ~/.config/rofi/configlist | awk '{if (NR!=1) print $1}'  
else
  CONFIGPATH="$(awk '1' ~/.config/rofi/configlist | grep $1 | awk '{print $2}')"
  coproc ($(termite -e "vim $CONFIGPATH" &) >& /dev/null &) 
fi
