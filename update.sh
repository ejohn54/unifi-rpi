#!/bin/sh
sudo apt-get update && sudo apt-get upgrade -y 
sudo rpi-update 
sudo apt-get autoremove 
sudo apt-get autoclean 
sudo reboot
