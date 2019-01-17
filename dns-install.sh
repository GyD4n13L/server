#! /bin/bash

# system update and instal BIND DNS-server
sudo apt-get update
sudo apt-get install ssh -y
sudo apt-get install bind9 bind9utils bind9-doc


# echo ' OPTIONS="-u bind -4"'>> /etc/default/bind9


# config the PRIMARY DNS server
# sudo systemctl restart bind9 -y


