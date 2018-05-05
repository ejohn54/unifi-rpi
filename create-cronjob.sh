#!/bin/bash

# Make sure logs folder is created.
mkdir -p /home/pi/logs

crontab -l > mycron
#echo new cron into cron file
echo "00 01 * * SUN bash /home/pi/unifi-rpi/get-latest.sh >> /home/pi/logs/gitpull.log 2>&1" >> mycron
echo "30 02 * * SUN bash /home/pi/update.sh >> /home/pi/logs/update_sh.log 2>&1" >> mycron
#install new cron file
crontab mycron
rm mycron
