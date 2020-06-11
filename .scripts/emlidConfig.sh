#!/bin/bash
#Configure wlan0 interface to use static ip
#cleanup old files
systemctl disable check-connection.service
systemctl stop check-connection.service
rm /usr/bin/checkEmlidHTTP
rm /etc/systemd/system/check-connection.service
rm /etc/systemd/network/wlan0.network

# create new files
cat <<EOF >/etc/systemd/network/wlan0.network
[Match]
Name=wlan0

[Network]
Address=192.168.8.100/24
DHCPServer=no

[DHCPServer]
Emitrouter=no
EOF

cat <<EOF >/etc/systemd/system/check-connection.service
[Unit]
Description=Checks IP on Router Network

[Service]
ExecStart=/usr/bin/checkEmlidHTTP

[Install]
WantedBy=multi-user.target
EOF

chmod 744 /etc/systemd/system/check-connection.service

cat <<EOF >/usr/bin/checkEmlidHTTP
#!/bin/sh
sleep 70s
logger "Starting Connection check"

ROUTER=\$(iw wlan0 link)
if [ "\$ROUTER" = "Not connected." ]; then
  logger "Failure - Not connected to router, rebooting"
  reboot
else
  RESPONSE="\$(printf "HEAD / HTTP/1.0\r\n\r\n" | nc 192.168.8.100 80 | head -1 | awk '{print \$2}')"

  if [ \$RESPONSE = "200" ]; then
    logger "Success! - My Ip is 192.168.8.100"
  else
    logger "Failure - My Ip is not 192.168.8.100, rebooting"
    reboot
  fi
fi
EOF

chmod +x /usr/bin/checkEmlidHTTP
systemctl enable check-connection.service

