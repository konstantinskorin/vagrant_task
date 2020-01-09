Vagrant.configure("2") do |config|
	config.vm.box_check_update = false
		
	config.vm.define "first" do |first|
		first.vm.box = "centos/7"
		first.vm.network "public_network", ip: "192.168.1.100"
		first.vm.network "private_network", ip: "10.10.1.10",
			virtualbox__intnet: true
		first.vm.synced_folder "share/", "/share1/"
		first.vm.hostname = "skorinfirst"
		first.vm.provider "virtualbox" do |vb|
			vb.name = "centos_first"
			vb.memory = "2048"
			vb.cpus = 1
		first.vm.provision "shell", inline: "setenforce 0", run: "always"	
		first.vm.provision "shell", path: "first.sh", privileged: true
		end
	end
		
	config.vm.define "second" do |second|
		second.vm.box = "centos/7"
		second.vm.network "public_network", ip: "192.168.1.101"
		second.vm.network "private_network", ip: "10.10.1.11",
			virtualbox__intnet: true
		second.vm.synced_folder "share/", "/share2/"
		second.vm.hostname = "skorinsecond"
		second.vm.provider "virtualbox" do |vb|
			vb.name = "centos_second"
			vb.memory = "4096"
			vb.cpus = 1
		second.vm.provision "shell", path: "second.sh", privileged: true
		end	
	end
end