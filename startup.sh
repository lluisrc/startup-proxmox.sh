#!/bin/bash

# Este script setea ip+hostname

echo -n "Enter IP: "
read ip

echo -n "Enter hostname: "
read hostnam

nmcli connection add type ethernet con-name eth0 ipv4.addresses $ip/24 ipv4.method manual

echo "$hostnam" > /etc/hostname

echo "System need restart"
