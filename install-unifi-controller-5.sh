#!/bin/bash

# Install avahi with the following commands on the Raspberry Pi:
sudo apt-get install avahi-daemon
sudo insserv avahi-daemon


# Add the UniFi repository to the sources list, using the following commands:
echo 'deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/ubnt.list > /dev/null
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv C0A52C50
sudo apt-get update

# Install UniFi, using the following package install command:
sudo apt-get install unifi -y


# Disable the default MongoDB database instance, using the following commands:
#echo 'ENABLE_MONGODB=no' | sudo tee -a /etc/mongodb.conf > /dev/null

# Update to the Snappy Java Library, using the following commands:
cd /usr/lib/unifi/lib
sudo rm snappy-java-1.0.5.jar
sudo wget https://repo1.maven.org/maven2/org/xerial/snappy/snappy-java/1.1.2.6/snappy-java-1.1.2.6.jar
sudo ln -s snappy-java-1.1.2.6.jar snappy-java-1.0.5.jar

# update to Oracle Java 8 by performing the following steps
sudo apt-get install oracle-java8-jdk -y

# Add the JAVA_HOME path for Oracle Java 8 to the UniFi defaults file, using the following command:
echo 'JAVA_HOME=/usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt' | sudo tee /etc/default/unifi > /dev/null

# Once completed, reboot your Raspberry Pi using the following command:
sudo reboot
