#!/bin/bash

crontab -l > mycron
#echo new cron into cron file
echo "30 02 * * * bash /home/pi/update.sh >> /home/pi/logs/cronlog" >> mycron
#install new cron file
crontab mycron
rm mycron