#!/bin/sh

# list policies and all rules for all chains of IPv4 and IPv6

echo "=== IPv4 ==="
/sbin/iptables --list-rules

echo "=== IPv6 ==="
/sbin/ip6tables --list-rules
