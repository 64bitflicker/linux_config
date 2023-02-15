#!/bin/sh
alias dhcp_server='sudo dnsmasq -z -i enp3s0 -I lo  --dhcp-range=192.168.200.100,192.168.200.200,12h --no-daemon -a 192.168.200.1'
