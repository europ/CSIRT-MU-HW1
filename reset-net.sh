#!/bin/sh

# reset policies and flush all rules for all chains of IPv4 and IPv6

/sbin/iptables  --flush
/sbin/ip6tables --flush

/sbin/iptables  --policy INPUT ACCEPT
/sbin/ip6tables --policy INPUT ACCEPT

/sbin/iptables  --policy FORWARD ACCEPT
/sbin/ip6tables --policy FORWARD ACCEPT

/sbin/iptables  --policy OUTPUT ACCEPT
/sbin/ip6tables --policy OUTPUT ACCEPT
