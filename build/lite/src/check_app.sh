#!/bin/bash

wget -qO- myip.wtf/json || echo "No internet connectivity..."; exit 1
cat /etc/earnapp/status | grep enabled || echo "App status not enabled..."; exit 1

