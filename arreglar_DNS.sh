#!/bin/bash

cd /tmp/
touch resolv.conf
if [ -n "$1" ]; then
        echo nameserver $1 > resolv.conf
else
        echo nameserver 8.8.8.8 > resolv.conf
fi

cd /ect/
sudo rm -R resolv.conf

cd /
sudo mv /tmp/resolv.conf /etc/
