#!/bin/bash
colorcodes="$(echo $(cat $1 | grep -o "\([a-f]\|[0-9]\)\{6\}\( \|\$\)"))"
colors=""

for i in $colorcodes; do
  input=$(echo $i | awk '{print toupper($0)}')
  blue="$(bc <<< "ibase=16;${input:0:2}")"
  red="$(bc <<< "ibase=16;${input:2:2}")"
  green="$(bc <<< "ibase=16;${input:4:2}")"
  
  colors="${colors}\x1b[38;2;${blue};${red};${green}m%-2s\x1b[0m"

  printf "$i "
  printf "\x1b[38;2;${blue};${red};${green}m\x1b[0m\n"
 
done

colors="${colors}\n"
printf $colors

