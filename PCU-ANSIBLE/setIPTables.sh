#!/bin/sh

service iptables stop
iptables -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
service iptables save
service iptables start
