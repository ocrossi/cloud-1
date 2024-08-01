#!/bin/bash

set -eu

sudo apt-get update -yq && sudo apt-get upgrade -yq && sudo apt-get install ansible
sudo apt-get install -yq python3-boto3

sudo apt-get install wget libnss3-tools -yq
wget https://github.com/FiloSottile/mkcert/releases/download/v1.4.3/mkcert-v1.4.3-linux-amd64
mv mkcert-v1.4.3-linux-amd64 /usr/bin/mkcert
chmod +x /usr/bin/mkcert


ln -s ./run_at_boot.sh /usr/local/bin/run_at_boot.sh

sh run_at_boot.sh
