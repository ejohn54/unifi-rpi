#!/bin/bash

echo "================================================================"
echo "Updating '$(hostname)'...             $(date)"

export DEBIAN_FRONTEND=noninteractive

sudo dpkg --configure -a

# Update the package list and update all packages
sudo apt-get update

#Set the Unifi has_backup configuration setting to true so the debconf prompt will not show.
echo unifi unifi/has_backup boolean true | sudo debconf-set-selections
yes | sudo -E apt-get -u -f -V -y upgrade

# Ensure the latest Raspberry Pi firmware has been applied
# WARNING: This installs prerelease kernel and firmware.  Use with caution.
# sudo rpi-update 

# Remove any packages that are no longer required
sudo apt-get autoremove -y
sudo apt-get autoclean 
sudo reboot
