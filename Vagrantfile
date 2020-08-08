# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2004"
  config.ssh.insert_key = false
  # config.vm.box_check_update = false

  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider "libvirt" do |vb|
    vb.cpus = 2
    vb.nested = true
    vb.memory = "512"
  end

  config.vm.define "localmachine" do | local |
    local.vm.hostname = "localmachine.test"
    local.vm.network :private_network, :ip => "192.168.60.4"
    config.vm.provision "ansible" do |ansible|
      ansible.playbook = "tests/localmachine.yml"
      ansible.tags = "debian"
      ansible.skip_tags = "vpnauth"
    end
  end

  config.vm.define "servermachine" do | server |
    server.vm.hostname = "servermachine.test"
    server.vm.network :private_network, :ip => "192.168.60.5"
    config.vm.provision "ansible" do |ansible|
      ansible.playbook = "tests/servermachine.yml"
      ansible.tags = "server"
      ansible.skip_tags = "vpnauth"
    end
  end
end
