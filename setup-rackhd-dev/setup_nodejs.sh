#!/bin/bash

set -e

wget -qO- https://raw.githubusercontent.com/xtuple/nvm/master/install.sh | sudo bash
nvm install 0.10
nvm install 4
nvm install 5
nvm alias default 0.10
nvm use 0.10
