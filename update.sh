#!/bin/sh

# Update the package list and update all packages 
sudo apt-get update && sudo apt-get upgrade -y 

# Ensure the latest Raspberry Pi firmware has been applied
sudo rpi-update 

# Remove any packages that are no longer required
sudo apt-get autoremove 
sudo apt-get autoclean 
sudo reboot
