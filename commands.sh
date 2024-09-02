#!/bin/bash

set -eu

apt-get update -yq && apt-get upgrade -yq && apt-get -yq install ansible

ansible-playbook -i localhost single_playbook.yml -e ansible_user="ansible_user"

ln -s ./run_at_boot.sh /usr/local/bin/run_at_boot.sh

sh run_at_boot.sh
