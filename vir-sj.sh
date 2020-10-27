#!/bin/bash

echo "net.ipv6.conf.all.disable_ipv6 = 0" >> /etc/sysctl.conf
echo "net.ipv6.conf.default.disable_ipv6 = 0" >> /etc/sysctl.conf
echo "net.ipv6.conf.lo.disable_ipv6 = 0" >> /etc/sysctl.conf
sysctl -p
sleep 1
echo "auto he-ipv6" >> /etc/network/interfaces
echo "iface he-ipv6 inet6 v4tunnel" >> /etc/network/interfaces
echo "address 2001:470:1f04:7a4::2" >> /etc/network/interfaces
echo "netmask 64" >> /etc/network/interfaces
echo "endpoint 72.52.104.74" >> /etc/network/interfaces
echo "local 192.3.117.239" >> /etc/network/interfaces
echo "ttl 255" >> /etc/network/interfaces
echo "gateway 2001:470:1f04:7a4::1" >> /etc/network/interfaces
/etc/init.d/networking restart
sleep 1
exit
