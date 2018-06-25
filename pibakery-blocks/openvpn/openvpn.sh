#!/bin/bash

( sudo su && \
  echo -e $1 > /etc/openvpn/$HOSTNAME.ovpn && \
  apt-get install openvpn -y && \
  chmod +x /etc/openvpn/update-resolv-conf && \
  echo 'up /etc/openvpn/update-resolv-conf' >> /etc/openvpn/$HOSTNAME.ovpn && \
  echo 'down /etc/openvpn/update-resolv-conf' >> /etc/openvpn/$HOSTNAME.ovpn && \
  openvpn --daemon --cd /etc/openvpn --script-security 2 --config $HOSTNAME.ovpn && \
  systemctl enable openvpn@$HOSTNAME )
