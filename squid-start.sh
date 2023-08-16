#!/bin/bash

sudo chown -R proxy:proxy /usr/local/squid
sudo sysctl -w net.ipv6.conf.eth0.disable_ipv6=0
sudo sysctl -w net.ipv6.conf.lo.disable_ipv6=0
sysctl -p 
sleep 10
sudo -u proxy -- /usr/local/squid/sbin/squid -d 10 >> squid-log.log
echo "started" >> squid-start.log
bash
# && sleep infinity
