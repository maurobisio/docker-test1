#!/bin/bash
ORIGEN='/vagrant/provision/'
export DEBIAN_FRONTEND=noninteractive

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get -y install vim docker-ce docker-compose jq

sed -i 's/"set background=dark/set background=dark/' /etc/vim/vimrc
sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/' /etc/skel/.bashrc
sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/' /root/.bashrc
sed -i 's/033\[01;32m/033\[01;31m/' /root/.bashrc

usermod -a -G docker vagrant

