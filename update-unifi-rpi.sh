#!/bin/bash

# To update the UniFi Controller software to the latest version, simply use the standard Debian package update and upgrade commands:
sudo apt-get update && sudo apt-get upgrade -y

#Ensure the latest Raspberry Pi firmware has been applied, using the following commands:
sudo apt-get install rpi-update && echo Y | sudo rpi-update


# Alternatively, if you just want to update the UniFi Controller software only, run the initial package installation command again:
#sudo apt-get install unifi -y
