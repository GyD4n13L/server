#! /bin/bash

sudo apt-get update
sudo apt-get install ssh -y
sudo apt-get install isc-dhcp-server -y

ifconfig -a

while true; do
echo " Which network adapter use DHCP/LAN interfaces?"
echo "LAN adapter name:"

    read -p " please enter your preference: [0|1|2|3]: " adapter
    case $adapter in
      [eth0]* ) echo 'INTERFACES="eth0"' >> /etc/default/isc-dhcp-server
                break;;
      [eth1]* ) echo 'INTERFACES="eth1"' >> /etc/default/isc-dhcp-server
                break;;
      [eth2]* ) echo 'INTERFACES="eth2"' >> /etc/default/isc-dhcp-server
                break;;
      [eth3]* ) echo 'INTERFACES="eth3"' >> /etc/default/isc-dhcp-server
                break;;
      * ) echo " please answer [1], [2] or [3]";;
    esac
done
