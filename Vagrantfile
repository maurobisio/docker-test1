# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    if Vagrant.has_plugin?("vagrant-cachier")
        config.cache.scope = :box
				config.cache.synced_folder_opts = {
      			owner: "_apt"
    		}
    end

    config.vm.define "server", primary: true do |server|
        server.vm.box ="ubuntu/bionic64"
        server.vm.hostname = "server"
        server.vm.network "forwarded_port", guest:8082, host:8082
        server.vm.provision "shell", path: "provision/server01.sh"
        server.vm.provider"virtualbox" do |vbox|
            vbox.memory = 1024
            vbox.cpus = 1
        end
    end

end

