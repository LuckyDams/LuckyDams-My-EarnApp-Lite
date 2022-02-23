#!/bin/bash

wget -qO- myip.wtf/json || { echo "ERROR: No response from myip.wtf, check connectivity..."; exit 1;}
grep -q enabled /etc/earnapp/status || { echo "ERROR: Status not enabled, check app..."; exit 1;}

