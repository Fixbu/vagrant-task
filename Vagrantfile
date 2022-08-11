# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.define "m1" do |m1|
    m1.vm.box = "bionic"

    m1.vm.provider "virtualbox" do |vb|
      vb.memory = 1000  # 4G
      vb.cpus = 3
    end

    m1.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

    m1.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbook.yml"
    end
  end

  config.vm.define "m2" do |m2|
    m2.vm.box = "bionic"

    m2.vm.provider "virtualbox" do |vb|
      vb.memory = 300  # 3G
      vb.cpus = 2
    end

    m2.vm.network "forwarded_port", guest: 80, host: 8081, host_ip: "127.0.0.1"
  end

  config.vm.define "m3" do |m3|
    m3.vm.box = "bionic"

    m3.vm.provider "virtualbox" do |vb|
      vb.memory = 400  # 2G
      vb.cpus = 2
    end

    m3.vm.network "forwarded_port", guest: 80, host: 8082, host_ip: "127.0.0.1"
  end

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
