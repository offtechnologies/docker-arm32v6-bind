#!/bin/sh

# generate control channel key if requested
if [ ! -f /etc/bind/rndc.key ]
then
  echo "/etc/bind/rndc.key not found; generating control channel key"
  rndc-confgen -r /dev/urandom -a -u named
elif [ ! -f /etc/bind/rndc.key ]
then
  echo "/etc/bind/rndc.key not found; control channel not enabled"
else
  echo "/etc/bind/rndc.key found; skipping control channel key generation"
fi

chown -R named:named /var/cache/bind
/usr/sbin/named -g -u named
