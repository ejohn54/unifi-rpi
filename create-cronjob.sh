#!/bin/bash

# Make sure logs folder is created.
mkdir -p /home/pi/logs

crontab -l > mycron
#echo new cron into cron file
echo "00 01 * * SUN bash /home/pi/unifi-rpi/get-latest.sh >> /home/pi/logs/gitpull.log" >> mycron
echo "30 02 * * SUN bash /home/pi/update.sh >> /home/pi/logs/cronlog" >> mycron
#install new cron file
crontab mycron
rm mycron
