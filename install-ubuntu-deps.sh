#!/bin/bash
set -e

if [[ $# -gt 0 ]]; then
    echo "Usage: install.sh" >&2
    exit 1
fi

sudo apt-get update

sudo apt-get install -y firefox htop git libxml2-dev libxslt-dev libffi-dev libssl-dev build-essential libboost-python-dev libleveldb-dev libjpeg-dev curl wget git bash vim xvfb

# For some versions of ubuntu, the package libleveldb1v5 isn't available. Use libleveldb1 instead.
sudo apt-get install -y libleveldb1v5 || sudo apt-get install -y libleveldb1

