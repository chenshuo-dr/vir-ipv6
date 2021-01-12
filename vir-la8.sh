#!/bin/bash

echo "net.ipv6.conf.all.disable_ipv6 = 0" >> /etc/sysctl.conf
echo "net.ipv6.conf.default.disable_ipv6 = 0" >> /etc/sysctl.conf
echo "net.ipv6.conf.lo.disable_ipv6 = 0" >> /etc/sysctl.conf
sysctl -p
sleep 1
echo "auto he-ipv6" >> /etc/network/interfaces
echo "iface he-ipv6 inet6 v4tunnel" >> /etc/network/interfaces
echo "address 2001:470:66:643::2" >> /etc/network/interfaces
echo "netmask 64" >> /etc/network/interfaces
echo "endpoint 64.62.134.130" >> /etc/network/interfaces
echo "local 107.175.21.170" >> /etc/network/interfaces
echo "ttl 255" >> /etc/network/interfaces
echo "gateway 2001:470:66:643::1" >> /etc/network/interfaces
sleep 1
exit
