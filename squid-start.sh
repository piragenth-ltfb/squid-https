#!/bin/bash

sudo sysctl -w net.ipv6.conf.eth0.disable_ipv6=0 && sudo sysctl -w net.ipv6.conf.lo.disable_ipv6=0 && sysctl -p && sudo -u proxy -- /usr/local/squid/sbin/squid -d 10
