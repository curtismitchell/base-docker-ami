#!/bin/sh

curl -fsSL https://get.docker.com/ | sh
sudo usermod -aG docker ubuntu
sudo service docker restart

sudo apt-get -y install python-pip
sudo pip install docker-compose
