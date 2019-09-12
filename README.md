# About

This is a repository created as an exercise, in order to understand better the usage of Ansible, Jenkins, Docker, Nexus and VM's (servers) in an enterprise environment. 

## Vagrant & Oracle VM Virtual Box

These two are prerequisites in order to be able to start the VM's.

## Installing the VM's

In order to start the VM's you will have to run the following command:

```bash
vagrant up
```
This will bring up the machines and will provision them with the following bash scripts. 

SSH_STUFF.sh adds ssh keys to all machines, to allow them to connect with each other, via the following command:

```bash
ssh vagrant@192.168.56.10X (x being replaced by the number of the machine 1,2 or 3)
```
I will advise you to add id_rsa,id_rsa.pub,config files, from the KEYS folder in your .ssh folder.


ANSIBLE_VM1.sh installs and configs Ansible on VM1, in a virtual environment.

## Usage

After the machines are up and running, you can connect to VM1, go to ansible environment directory and activate it. 

```bash
cd /home/vagrant/ansible

source bin/activate
```

After the environment is activated, you can go to the shared folder that was automatically created with Vagrant, and build with Ansible on VM3. This will run the roles you have on machine 3.

```bash
cp -r /shared_folder_JAT/ansible /home/vagrant/ansible/

cd ansible

ansible-playbook brains.yml
```

The default roles are:

#### docker

Installs and configures docker

#### groups_users

Creates and adds the user

#### containers

Installs the prerequisites for containers and then runs the default containers.(Docker Private Repository, Nexus Repository Manager)

Docker Private Registry: http://192.168.56.103:5000/
Nexus Container: http://192.168.56.103:8081/

#### jenki

Builds and deploys the default application. (( TO ADD MORE AFTER WE FINISH ))

