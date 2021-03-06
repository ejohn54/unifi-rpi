# unifi-rpi
Installing Ubiquity Unifi Controller onto a Raspberry Pi

Use the command `sudo chmod +x update.sh` for all .sh files to make them executable.

1. Run the `dist-update.sh` file to update the Raspberry Pi to the latest.
2. Run the `install-unifi-controller-5.sh` file to install the Unifi Controller and its requirements.
3. Run the `disable-default-mongodb.sh` file to disable the default instance of MongoDB.

Optional:
Setup avahi-daemon to respond to 'raspberrypi.local'.  This allows you to access the Raspberry Pi device by name on your network.

1. Run the `configure-avahi.sh` file to create the required multiple.service file and restart the avahi-daemon
2. Install the Bonjour for Windows from Apple at: http://support.apple.com/kb/DL999
3. Add a firewall exception for UDP port 5353 by running the command: 

The Raspberry Pi should now be addressable from other machines as 'raspberrypi.local' if raspberrypi is its hostname, for example:  
`ping raspberrypi.local`


To schedule automatic updates, enter this command
`crontab -e`

Choose nano as the editor, then enter the following line on the last line of the file.  
`0 0 * * SAT sh /home/pi/update.sh >> /home/pi/logs/cronlog 2>&1`

This will run the script `update.sh` once a week on Saturday at midnight to update the pi.
