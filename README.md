# unifi-rpi
Installing Ubiquity Unifi Controller onto a Raspberry Pi

1. Run the 'update-unifi-rpi.sh' file to update the Raspberry Pi to the latest.
2. Run the 'disable-default-mongodb.sh' file to disable the default instance of MongoDB.
3. Run the 'install-unifi-controller-5.sh' file to install the Unifi Controller and its requirements.

Optional:
Setup avahi-daemon to respond to 'raspberrypi.local'.  This allows you to access the Raspberry Pi device by name on your network.

1. Copy the file 'multiple.service' to '/etc/avahi/services/multiple.service'
2. Install the Bonjour for Windows from Apple at: http://support.apple.com/kb/DL999
3. Add a firewall exception for UDP port 5353 by running the command: 

