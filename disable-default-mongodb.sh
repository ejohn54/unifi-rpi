#!/bin/bash


# Disable the default MongoDB database instance, using the following commands:
echo 'ENABLE_MONGODB=no' | sudo tee -a /etc/mongodb.conf > /dev/null
