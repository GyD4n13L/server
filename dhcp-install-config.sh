#! /bin/bash

sudo apt-get update
sudo apt-get install ssh -y
sudo apt-get install isc-dhcp-server -y

ifconfig -a

echo "LAN adapter name:"

    read -p " please enter your preference: [eth0|eth1|eth2|eth3|eth4]: " adapter
    case $adapter in
      [eth0]* ) echo 'INTERFACES="eth0"' >> /etc/default/isc-dhcp-server
