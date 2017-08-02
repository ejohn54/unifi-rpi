#!/bin/bash

# Install avahi with the following commands on the Raspberry Pi:
sudo apt-get install avahi-daemon samba -y
sudo insserv avahi-daemon


# Add the UniFi repository to the sources list, using the following commands:
echo 'deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt.list > /dev/null
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 06E85760C0A52C50
sudo apt-get update

# Install UniFi, using the following package install command:
sudo apt-get install unifi -y


# Disable the default MongoDB database instance, using the following commands:
#echo 'ENABLE_MONGODB=no' | sudo tee -a /etc/mongodb.conf > /dev/null

# NOTE: (No longer needed with Unifi 5.5) Update to the Snappy Java Library, using the following commands:
#sudo rm /usr/lib/unifi/lib/snappy-java-1.0.5.jar
#sudo wget -O /usr/lib/unifi/lib https://repo1.maven.org/maven2/org/xerial/snappy/snappy-java/1.1.4-M3/snappy-java-1.1.4-M3.jar
#sudo ln -s /usr/lib/unifi/lib/snappy-java-1.1.4-M3.jar /usr/lib/unifi/lib/snappy-java-1.0.5.jar

# update to Oracle Java 8 by performing the following steps
sudo apt-get install oracle-java8-jdk -y

# Add the JAVA_HOME path for Oracle Java 8 to the UniFi defaults file, using the following command:
echo 'JAVA_HOME=/usr/lib/jvm/jdk-8-oracle-arm32-vfp-hflt' | sudo tee /etc/default/unifi > /dev/null

# Once completed, reboot your Raspberry Pi using the following command:
sudo reboot
