#!/bin/bash

# Install avahi with the following commands on the Raspberry Pi:
#sudo apt-get install avahi-daemon -y
#sudo insserv avahi-daemon

# Install samba to allow accessing by hostname
sudo apt-get install samba -y


# Add the UniFi repository to the sources list, using the following commands:
echo 'deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt.list > /dev/null
sudo wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ubnt.com/unifi/unifi-repo.gpg
sudo apt-get update

# Install UniFi, using the following package install command:
sudo apt-get install unifi -y


# Disable the default MongoDB database instance, using the following commands:
grep -q -F 'ENABLE_MONGODB' /etc/mongodb.conf || echo 'ENABLE_MONGODB=no' | sudo tee -a /etc/mongodb.conf > /dev/null

# update to Oracle Java 8 by performing the following steps
sudo apt-get install oracle-java8-jdk -y

# Add the JAVA_HOME path for Oracle Java 8 to the UniFi defaults file, using the following command:
echo 'JAVA_HOME=/usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt' | sudo tee /etc/default/unifi > /dev/null

# Once completed, reboot your Raspberry Pi using the following command:
#sudo reboot
echo "Reboot your Raspberry Pi to finish the setup."