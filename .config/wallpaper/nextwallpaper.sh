#!/bin/bash
files=(/home/aich/.wallpaper/wallpapers/*)

if [ -z $CURRWALL ]; then
  CURRWALL=null
  echo "set CURRWALL to null"
  export -p $CURRWALL
fi

currwallindex=0
if (( $CURRWALL != "null" )); then 
   echo $currwallindex
  
  for wall in "${files[@]}"
  do
    $currewallindex=$currwallindex + 1
    if [ $wall = $CURRWALL ]; then
	break		
    fi
  done
fi
echo "currwal is = $CURRWALL"
CURRWALL=${files[$currwallindex]}
export -p $CURRWALL
feh --bg-scale ${files[$currwallindex]}

