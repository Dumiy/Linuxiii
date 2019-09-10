#!/bin/bash

cd /home/vagrant/
rm -rf /home/vagrant/.ssh
mkdir /home/vagrant/.ssh

cp /shared_folder_JAT/keys/id_rsa /home/vagrant/.ssh
cp /shared_folder_JAT/keys/id_rsa.pub /home/vagrant/.ssh
cp /shared_folder_JAT/keys/config /home/vagrant/.ssh

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDkCWGpw973H6A/Sz1wj5P3N7Dem/umpptRQYyi4tFCKgbe+PhBa0z4kebCkT4leDWr3aGSK1OiyEAsBjErh1DcaKjyY42csTDr5gw9RwdvsP02s+tbsUMG/eW8X63Mw7otVNQNnCqf8GhSulAmKXHSoND+Lgtpb/Z3U7dFE8y5eGn34fN7Wfn21VF5sYPajtqsfGJeI6hSXw+KZMVd+mCJvt2jyN+b3pj9vAOVegUiN0NTBIRvZuNUac9eP1l15UOaSwRf9/xuBGhsZYGahTwlnVn54NAnJ6gfp506O54uwZTgG7bLMqSMbMgGNu29+QKfc0dRvqQ7Zq2ctMQob7Thfgkf5AB+clNSif/X/ZrAMxVT7W99RxXorVt3RJRLKqwhpaQ/+P51Z+fv7Ru4VoNfMmQex8+XTG5o4jDl5XeFQZQnDjUOkVjlDOzQIi0Hh8thguEUhcsRUTP5A8Rleec7JGVd6NP1Vnl6un3J4sCM9IynFEOSM1sIGGVD9ZKmx0M= cdumitrascu@EN1310281" > /home/vagrant/.ssh/authorized_keys
