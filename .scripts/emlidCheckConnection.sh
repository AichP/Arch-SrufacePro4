#!/bin/sh
sleep 70s
RESPONSE=$(printf "HEAD / HTTP/1.0\r\n\r\n" | nc 192.168.8.100 80 | head -1 | awk '{print $2}')
if [ $RESPONSE = "200" ]; then
  logger -s "Emlid can be reached"
else
  logger -s "Emlid can't be reached on 192.168.8.100:80 -> rebooting"
  reboot
fi

