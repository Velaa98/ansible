# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|


  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/site.yml"
    ansible.config_file = "provisioning/ansible.cfg"
  end


 config.vm.define "nodo1" do |nodo1|
   config.vm.provider "virtualbox" do |vb|
     vb.name = "nodo1"
     vb.cpus = 1
    end
	
   nodo1.vm.box = "debian/stretch64"
   nodo1.vm.hostname = "nodo1"
#   nodo1.vm.network :public_network,:bridge=>"eth0"
#   nodo1.vm.network :private_network, ip: "10.0.0.10"
   nodo1.vm.network "private_network",
     ip: "10.0.0.10",
     name: "vboxnet1",
     adapter: 3
  end


 config.vm.define "nodo2" do |nodo2|
   config.vm.provider "virtualbox" do |vb|
     vb.name = "nodo2"
     vb.cpus = 1
   end

   nodo2.vm.box = "debian/stretch64"
   nodo2.vm.hostname = "nodo2"
#   nodo2.vm.network :public_network,:bridge=>"eth0"
#   nodo2.vm.network :private_network, ip: "10.0.0.11"
    nodo2.vm.network "private_network",
      ip: "10.0.0.11",
      name: "vboxnet1",
      adapter: 3
 end
end
