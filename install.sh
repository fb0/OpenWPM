#!/bin/bash
set -e

./install-ubuntu-deps.sh

./install-firefox.sh

./install-pip-and-packages.sh

./install-node.sh

# Download and build client extension
./build-extension.sh
