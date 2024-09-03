#!/bin/bash


systemctl stop nginx

echo "this was runned at boot `date`" >> /var/log/my_data.log

# echo "export $(xargs </home/ubuntu/cloud-1/.env)" >> .bashrc

source ~/.bashrc

cd /home/ubuntu/cloud-1 && docker compose up -d
