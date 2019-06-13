#!/bin/sh

echo "=== IPv4 ==="
/sbin/iptables --list-rules

echo "=== IPv6 ==="
/sbin/ip6tables --list-rules
