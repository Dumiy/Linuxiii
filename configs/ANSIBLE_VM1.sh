#!/bin/bash

yum install wget -y
yum install vim -y
yum install epel-release -y
yum install ansible -y
echo "[servers]
192.168.56.101
192.168.56.102
192.168.56.103" > /etc/ansible/hosts