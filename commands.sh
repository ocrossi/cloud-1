#!/bin/bash

sudo apt-get update -yq && sudo apt-get upgrade -yq && sudo apt-get install pipx
pipx install --include-deps ansible
