# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "chef/debian-7.4"
  config.vm.provision :shell, path: "vagrant/init.sh"

  config.vm.network "forwarded_port", guest: 80, host: 7777 
	# try to bind a new hosts entry as progress.local
	if Vagrant.has_plugin?("vagrant-hostsupdater")
		config.hostsupdater.aliases = ["rustbox.local"]
	end
  # privately accessible here
  config.vm.network "private_network", ip: "192.168.33.11"

  # so that the box can be used for git
  config.ssh.forward_agent = true

  # share to ~/progress
  config.vm.synced_folder "./sync", "/home/vagrant/rustbox"

  config.vm.provider "virtualbox" do |vb|  
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

end
