#!/bin/sh

/sbin/iptables --flush
/sbin/ip6tables --flush
/sbin/iptables -P INPUT ACCEPT
/sbin/ip6tables -P INPUT ACCEPT
