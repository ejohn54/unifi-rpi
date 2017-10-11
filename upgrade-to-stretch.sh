#!/bin/bash

sudo sed -i 's/jessie/stretch/g' /etc/apt/sources.list
sudo sed -i 's/jessie/stretch/g' /etc/apt/sources.list.d/raspi.list

echo "Updated APT sources to use 'stretch'."
echo "Run 'sudo apt-get update && sudo apt-get dist-upgrade' to upgrade."
