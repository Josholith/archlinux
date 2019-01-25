#!/bin/bash

# /etc/profile.d/proxy.sh

# Automatically set http_proxy environment variable
# if we are on the right subnet

if (( $(ip route | grep -Ec 'src 192\.168\.(12|212)\.') > 0 )) ; then
  export http_proxy=http://192.168.12.41:3128
  export no_proxy=localhost,127.0.0.0/8,::1,192.168.0.0/16,plex
else
  unset http_proxy	
  export http_proxy
fi

# IPADDR=$(ip addr show dev wlp2s0 | egrep -o 'inet ([0-9]+.){3}[0-9]+' | awk '{print $NF}')
# if [[ "$IPADDR" =~ '192.168.212.' ]] ; then
