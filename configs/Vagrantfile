Vagrant.configure("2") do |config|
  config.vm.define "VM1" do |master|
    master.vm.box = "centos/7"
    master.vm.hostname = 'ansible'
    master.vm.network :private_network, ip: "192.168.56.101"
#	master.vm.network :forwarded_port, guest: 8080, host: 8080
	master.vm.synced_folder "C:/Users/cpreda/OneDrive - ENDAVA/Desktop/Cursuri/PROIECT/configs/keys", "/shared_folder_JAT", type: "virtualbox"
#	master.vm.provision "shell", path: "git_java_maven_jenkins.sh"
	master.vm.provision "shell", path: "SSH_STUFF.sh"


	master.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--name", "main"]
	  v.customize ["modifyvm", :id, "--cpus", 1]


    end
  end
########VM2
  config.vm.define "VM2" do |slave|
    slave.vm.box = "centos/7"
    slave.vm.hostname = 'ansible1'

    slave.vm.network :private_network, ip: "192.168.56.102"
#	slave.vm.network :forwarded_port, guest: 8888, host: 8888
	slave.vm.synced_folder ".", "/shared_folder_JAT", type: "virtualbox"
	slave.vm.provision "file", source: "C:/Users/cpreda/OneDrive - ENDAVA/Desktop/Cursuri/PROIECT/configs/keys", destination: "~/.ssh"
	slave.vm.provision "shell", path: "SSH_STUFF.sh"

    slave.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--name", "second"]
	  v.customize ["modifyvm", :id, "--cpus", 1]
    end
  end
######VM3
  config.vm.define "VM3" do |slave|
    slave.vm.box = "centos/7"
    slave.vm.hostname = 'nexus'

    slave.vm.network :private_network, ip: "192.168.56.103"
#	slave.vm.network :forwarded_port, guest: 8888, host: 8888
	slave.vm.synced_folder ".", "/shared_folder_JAT", type: "virtualbox"
	slave.vm.provision "file", source: "C:/Users/cpreda/OneDrive - ENDAVA/Desktop/Cursuri/PROIECT/configs/keys", destination: "~/.ssh"
	slave.vm.provision "shell", path: "SSH_STUFF.sh"

    slave.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--memory", 2048]
      v.customize ["modifyvm", :id, "--name", "third"]
	  v.customize ["modifyvm", :id, "--cpus", 1]
    end
  end
end
