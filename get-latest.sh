#!/bin/bash

echo "================================================================"
echo "Getting latest from github '$(hostname)'...  $(date)"

mkdir -p /home/pi/logs
pushd /home/pi/unifi-rpi
echo
git pull
if [ $? -eq 0 ]; then
  cp /home/pi/unifi-rpi/update.sh /home/pi/
fi

popd



