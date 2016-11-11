#!/bin/bash
#
# stop.sh
# 
# This script is called by the PSA API when the PSA is requested to be stopped.
# 

# We don't need to save current config
#iptables-save > psaConfigs/12345

# Flush iptables
iptables -F
iptables -X
iptables -t nat -F
iptables -t nat -X
iptables -t mangle -F
iptables -t mangle -X
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT

echo "PSA Stopped"
exit 1;
