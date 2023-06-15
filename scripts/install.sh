#!/bin/bash

sudo apt-get update
sudo apt-get install -y nginx
sudo systemctl enable nginx
sudo systemclt start nginx
 apt-get install -y sed sysstat curl htop vim cron