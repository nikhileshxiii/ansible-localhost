# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'virtualbox'
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
    vb.memory = "8192"
  end


  config.vm.provider "virtualbox" do |vb|
    # vb.gui = true
    # vb.memory = "1024"
  end


  config.vm.define "ubuntumachine" do | local |
    local.vm.hostname = "ubuntumachine"
    local.vm.network :private_network, :ip => "192.168.60.4"
    config.vm.provision "shell", inline: <<-SHELL
    #   apt-get update
    #   apt-get install -y python3 python3-venv python3-pip
      sudo systemctl restart sshd
    SHELL

    config.vm.provision "ansible" do |ansible|
      ansible.limit = "all"
      ansible.playbook = "tests/python3.yml"
      # ansible.inventory_path = "tests/inventory"
      ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/python3" }
    end

    config.vm.provision "ansible" do |ansible|
      ansible.limit = "all"
      ansible.playbook = "tests/ubuntumachine.yml"
      ansible.inventory_path = "tests/inventory"      
      # ansible.tags = "ubuntu"
      ansible.skip_tags = "vpnauth"
      ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/python3" }
    end
  end
end
