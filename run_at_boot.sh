#!/bin/bash


systemctl stop nginx

echo "this was runned at boot `date`" >> /var/log/my_data.log

source $(pwd)/.env

cd /home/ubuntu/cloud-1 && docker compose up -d


