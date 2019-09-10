#!/bin/bash

# cd /home/vagrant/
# rm -rf /home/vagrant/.ssh
# mkdir /home/vagrant/.ssh

cp /shared_folder_JAT/id_rsa /home/vagrant/.ssh
cp /shared_folder_JAT/id_rsa.pub /home/vagrant/.ssh
cp /shared_folder_JAT/config /home/vagrant/.ssh

chmod 700 /home/vagrant/.ssh
chown vagrant:vagrant /home/vagrant/.ssh/authorized_keys
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa.pub
chown vagrant:vagrant /home/vagrant/.ssh/config
chmod 644 /home/vagrant/.ssh/authorized_keys
chmod 600 /home/vagrant/.ssh/id_rsa
chmod 600 /home/vagrant/.ssh/id_rsa.pub
chmod 600 /home/vagrant/.ssh/config

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCyy77UwX18dcWtKHLSC0Weh6Ceb8EJJLw9NbuyI1jc6qSodYbyWGfq5jsaPXz4oZS3cIIj2uWC9Y+Jt19rBZ0t4mxVMAR4hg4iM9VkrKgp1GdGpRvMxHwzf0/PvXjVlixIyC55tDcm2LGgLKlvxrSlQK5oANk9EGpFdBgVtwSDzHGqWWC2XhpPEkqT7YPomAi5OifhaqqrPn5PjOTC6k4dGJ9iu32D5gmGuPqvx2yppnVD3etMlyAZpmTVgYXNOZkBS55GR6lJIdclMPRovOstnSKIhVBPR7EfG8XzmwXWpmGeND7UN77m9iPmBI4dYwARiEnaBNh8x0YcrezQB3xPXXQDy6XpcOiWg7vB29QjuyIr9FIUeYQELaiZyCut5LXab7Fh9zOt+XBlixrPr2LM4OxQfW+e5nKAc4tM2RyQmyesh+G01DBSFFocO2VpWfoH9cOeF8g6PBh8DjDMMAXg9WyTaE/US0Li4NtQJrTfUnjCl/xOyU7D8BLJh5YmmUc= cpreda@EN1310279" >> /home/vagrant/.ssh/authorized_keys
