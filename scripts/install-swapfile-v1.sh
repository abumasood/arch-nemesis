#!/bin/bash
set -e
##################################################################################################################
# Author 	: 	Marco Obaid
# GitHub    :   https://github.com/abumasood
##################################################################################################################
#
#   Configure swapfile on ArcoLinux
#
##################################################################################################################

sudo fallocate -l 8G /swapfile
sudo dd if=/dev/zero of=/swapfile bs=100M count=80
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
###sudo echo "/swapfile none swap defaults 0 0" >> /etc/fstab
#sudo cp /etc/fstab /tmp/fstab.bak
#sudo cp /etc/fstab /tmp/fstab.new
#sudo cp /etc/fstab.new	/etc/fstab
#sudo echo "/swapfile none swap defaults 0 0" >> /tmp/fstab.new
sudo swapon --show

echo "################################################################"
echo "#########          swapfile is now configured         ##########"
echo "################################################################"