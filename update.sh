#!/bin/sh

echo "================================================================"
echo "Updating '$(hostname)'...             $(date)"

# Update the package list and update all packages
sudo apt-get update
yes | sudo apt-get upgrade --show-upgraded --fix-broken -y 

# Ensure the latest Raspberry Pi firmware has been applied
sudo rpi-update 

# Remove any packages that are no longer required
sudo apt-get autoremove -y
sudo apt-get autoclean 
sudo reboot
