#!/bin/bash
files=(/home/aich/.config/colorthemes/backgrounds/red/*)

if [ -z $CURRWALL ]; then
  CURRWALL="null"
  echo "set CURRWALL to null"
  export -p $CURRWALL
fi

currwallindex=0
if (( $CURRWALL != "null" )); then 
   echo $currwallindex
  
  for wall in "${files[@]}"
  do
    currewallindex=$currwallindex + 1
    if [ $wall = $CURRWALL ]; then
	break		
    fi
  done
fi
CURRWALL=${files[$currwallindex]}
echo "currwal is = $CURRWALL"
echo "export CURRWALL='$CURRWALL'" >> /home/aich/.zshrc 
feh --bg-scale ${files[$currwallindex]}

