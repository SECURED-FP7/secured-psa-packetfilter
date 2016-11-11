#!/bin/bash
#
# status.sh
# 
# This script is called by the PSA API when the PSA's runtime status is requested.
# 
# Return value: 
# 1: PSA is alive
# 0: PSA not running correctly.
#

STATUS_OUTPUT="$(iptables -L)"
len=${#STATUS_OUTPUT}

# Just a quick hack: iptables -L length with empty config is 274, so check that there's something
if [ $len -gt 273 ] 
then
    echo 1
else
    echo 0
fi

exit 1;

