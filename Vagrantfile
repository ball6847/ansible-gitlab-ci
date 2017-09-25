# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "server1" do |ubuntu|
    ubuntu.vm.box = "ubuntu/xenial64-docker"
    ubuntu.vm.hostname = "server1"
    ubuntu.vm.network "public_network", bridge: "enp1s0"
    ubuntu.vm.synced_folder "./", "/vagrant", disabled:true
    ubuntu.ssh.port = 2222
    ubuntu.ssh.insert_key = false
    ubuntu.ssh.private_key_path = ["~/.vagrant.d/insecure_private_key"]
    #ubuntu.ssh.username = "ubuntu"
    ubuntu.vm.provider "virtualbox" do |vb|
      vb.cpus = 1
      vb.memory = 2*1024
    end
  end

  config.vm.define "server2" do |ubuntu|
    ubuntu.vm.box = "ubuntu/xenial64-docker"
    ubuntu.vm.hostname = "server2"
    ubuntu.vm.network "public_network", bridge: "enp1s0"
    ubuntu.vm.synced_folder "./", "/vagrant", disabled:true
    ubuntu.ssh.port = 2222
    ubuntu.ssh.insert_key = false
    ubuntu.ssh.private_key_path = ["~/.vagrant.d/insecure_private_key"]
    #ubuntu.ssh.username = "ubuntu"
    ubuntu.vm.provider "virtualbox" do |vb|
      vb.cpus = 1
      vb.memory = 2*1024
    end
  end
end
