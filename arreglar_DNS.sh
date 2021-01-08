#!/bin/bash

cd /tmp/
touch resolv.conf
echo nameserver 8.8.8.8 > resolv.conf

cd /ect/
sudo rm -R resolv.conf

cd /
sudo mv /tmp/resolv.conf /etc/
