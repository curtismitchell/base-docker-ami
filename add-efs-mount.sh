#!/bin/sh

sudo apt-get install -y nfs-common
wget https://github.com/ContainX/docker-volume-netshare/releases/download/v0.33/docker-volume-netshare_0.33_amd64.deb
sudo dpkg -i docker-volume-netshare_0.33_amd64.deb
sudo sh -c 'echo DKV_NETSHARE_OPTS="efs --nameserver=169.254.169.253" > /etc/default/docker-volume-netshare'
sudo service docker-volume-netshare start
rm -f docker-volume-netshare_0.33_amd64.deb
