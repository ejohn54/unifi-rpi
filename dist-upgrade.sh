#!/bin/sh

# Update the package list and update all packages 
sudo apt-get update
sudo apt-get dist-upgrade --show-upgraded --fix-broken -y

#Ensure the latest Raspberry Pi firmware has been applied, using the following commands:
sudo apt-get install rpi-update
sudo rpi-update

# Remove any packages that are no longer required
sudo apt-get autoremove -y
sudo apt-get autoclean 
