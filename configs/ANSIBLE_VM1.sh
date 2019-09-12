#!/bin/bash

yum install wget -y
yum install vim -y
yum install epel-release -y
yum install python-pip -y
pip install virtualenv
cd /home/vagrant
virtualenv ansible
source  ansible/bin/activate
pip install ansible
mkdir /home/vagrant/ansible/configs
touch /home/vagrant/ansible/configs/inventory
echo "[servers]
192.168.56.101
192.168.56.102
192.168.56.103" > /home/vagrant/ansible/configs/inventory
mkdir /home/vagrant/jenkins
sudo yum install git -y
cd /home/vagrant/jenkins
git remote add  https://github.com/Dumiy/Linuxiii
git pull origin master
git checkout ansible
cd configs/keys/ansible/jenkins
ansible-galaxy install -r requirements.yml
ansible-galaxy install avinash6784.maven