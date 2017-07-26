#!/bin/bash

#Make sure the nginx web server is installed
sudo apt-get install nginx -y

sudo /etc/init.d/nginx stop

#Create a redirect website config file.
sudo tee /etc/nginx/sites-available/unifi <<EOF
server {
    listen 80 default_server;
    listen [::]:80 default_server;
    server_name _;
    return 301 https://\$host:8443\$request_uri;
}
EOF

#Enable the unifi site
sudo rm -f /etc/nginx/sites-enabled/unifi
sudo ln -s /etc/nginx/sites-available/unifi /etc/nginx/sites-enabled/unifi
#Disable the default site
sudo rm -f /etc/nginx/sites-enabled/default

#Start the web server
sudo /etc/init.d/nginx start
