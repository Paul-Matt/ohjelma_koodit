#!/bin/bash

echo "starting to install programs on live USB"
set -o verbose

echo "Installing Salt Minion and Git"
sudo apt-get update
sudo apt-get -y install git salt-minion

echo "Making Salt Minion settings and copying GitHub repository"
echo 'master: localhost'|sudo tee /etc/salt/minion
git clone https://github.com/Paul-Matt/ohjelma_koodit.git

echo "Configuring settings"
setxkbmap fi
sudo timedatectl set-timezone Europe/Helsinki

echo "Installing programs"
sudo salt-call --local --file-root srv/salt state.highstate

echo "Done."
