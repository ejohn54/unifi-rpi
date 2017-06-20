#!/bin/bash

# Update the package list, update all packages and remove any packages that are no longer required
sudo apt-get update -y && sudo apt-get dist-upgrade -y && sudo apt-get autoremove -y

#Ensure the latest Raspberry Pi firmware has been applied, using the following commands:
sudo apt-get install rpi-update
sudo rpi-update


# Alternatively, if you just want to update the UniFi Controller software only, run the initial package installation command again:
#sudo apt-get install unifi -y
