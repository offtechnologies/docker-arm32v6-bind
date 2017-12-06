#!/bin/sh
chown -R named:named /var/bind /etc/bind /var/run/named /var/log/named
chmod -R o-rwx /var/bind /etc/bind /var/run/named /var/log/named
/usr/sbin/named -g -u named
