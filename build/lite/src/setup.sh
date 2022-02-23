#!/bin/bash

archs=`uname -m`
if [ $archs = "x86_64" ]; then
    file=bin_64
elif [ $archs = "amd64" ]; then
    file=bin_64
elif [ $archs = "armv7l" ]; then
    file=armv7
elif [ $archs = "armv6l" ]; then
    file=armv7
elif [ $archs = "aarch64" ]; then
    file=aarch64
elif [ $archs = "arm64" ]; then
    file=aarch64
else
    file=armv7
fi

mkdir -p /app
echo "Dowloading latest earnapp binary for $archs arch..."
wget -cq --no-check-certificate https://brightdata.com/static/earnapp/$file -O /app/earnapp
echo | md5sum /app/earnapp
chmod +x /app/earnapp
ln -s /app/earnapp /usr/bin/earnapp

