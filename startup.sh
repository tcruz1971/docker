#!/bin/bash
service rsyslog start
service saslauthd start
service ssh start
rm /var/run/fail2ban/*
service fail2ban start
service webmin start
service rpcbind start
service mysql start
service fetchmail start
service clamav-freshclam start
service postfix start
service cyrus-imapd start
echo 'Starting WebServer'
/usr/sbin/apache2ctl -D FOREGROUND



