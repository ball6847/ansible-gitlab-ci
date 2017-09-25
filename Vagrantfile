# -*- mode: ruby -*-
# vi: set ft=ruby :

VM_NODE_NUM = 2
VM_NODE_MEM = 2

Vagrant.configure("2") do |config|
  (1..VM_NODE_NUM).to_a.each do |n|
    config.vm.define "server#{n}" do |ubuntu|
      ubuntu.vm.box = "ubuntu/xenial64-docker"
      ubuntu.vm.hostname = "server#{n}"
      ubuntu.vm.network "public_network", bridge: "enp1s0"
      ubuntu.vm.synced_folder "./", "/vagrant", disabled:true
      ubuntu.ssh.insert_key = false
      ubuntu.ssh.private_key_path = ["~/.vagrant.d/insecure_private_key"]
      #ubuntu.ssh.username = "ubuntu"
      ubuntu.vm.provider "virtualbox" do |vb|
        vb.cpus = 1
        vb.memory = VM_NODE_MEM*1024
      end
    end
  end
end
