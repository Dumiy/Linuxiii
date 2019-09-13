#!/bin/bash
sudo -u vagrant -H bash << EOF

cd /home/vagrant/jenkins/Linuxiii/configs/keys/ansible
source /home/vagrant/ansible/bin/activate
ansible-playbook brains.yml

EOF
