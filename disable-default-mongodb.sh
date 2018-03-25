#!/bin/bash


# Disable the default MongoDB database instance, using the following commands:
grep -q -F 'ENABLE_MONGODB' /etc/mongodb.conf || echo 'ENABLE_MONGODB=no' | sudo tee -a /etc/mongodb.conf > /dev/null
