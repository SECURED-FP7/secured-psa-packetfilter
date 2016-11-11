#!/bin/bash
#
# start.sh
# 
# This script is called by the PSA API when the PSA is requested to be started.

# Load PSA's current configuration
iptables-restore < psaConfigs/psaconf

echo "PSA Started"

exit 1;
