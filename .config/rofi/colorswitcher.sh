#!/bin/bash
if [[ -z "$@" ]]; then
  awk '1' ~/.config/rofi/colorlist | awk '{if (NR!=1) print $1 }'
else
  COLORSCRIPT="$(awk '1' ~/.config/rofi/colorlist | grep $1 | awk '{print $2 " " $3}')"
  coproc ((eval $COLORSCRIPT &) >& /dev/null &) 
fi
