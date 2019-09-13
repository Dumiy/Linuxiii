#!/bin/bash

yum install wget -y
yum install vim -y
yum install epel-release -y
yum install python-pip -y
pip install virtualenv
cd /home/vagrant
virtualenv ansible
source /home/vagrant/ansible/bin/activate
pip install ansible

mkdir /home/vagrant/jenkins
sudo yum install git -y
cd /home/vagrant/jenkins

git clone https://github.com/Dumiy/Linuxiii.git

# cd /home/vagrant/jenkins/Linuxiii/configs/keys/ansible
#
# source /home/vagrant/ansible/bin/activate
# ansible-playbook brains.yml
