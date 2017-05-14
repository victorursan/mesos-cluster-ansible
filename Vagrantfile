
Vagrant.configure(2) do |config|
    config.vm.box = "ubuntu/trusty64"

    config.vm.provider "virtualbox" do |v|
      v.memory = 2048
      v.cpus = 1
    end

    #ssh passwords to all the machines, you can set it per machine
    config.ssh.password = "vagrant"

    #master machines
    config.vm.define "master1" do |master1|
        master1.vm.network "private_network", ip: "10.1.1.11"
        master1.vm.hostname = "master1"
    end

    # config.vm.define "master2" do |master2|
    #     master2.vm.network "private_network", ip: "10.1.1.12"
    #     master2.vm.hostname = "master2"
    # end
    #
    # config.vm.define "master3" do |master3|
    #     master3.vm.network "private_network", ip: "10.1.1.13"
    #     master3.vm.hostname = "master3"
    # end

    #slave machines
    config.vm.define "slave1" do |slave1|
        slave1.vm.network "private_network", ip: "10.1.10.11"
        slave1.vm.hostname = "slave1"
    end

    config.vm.define "slave2" do |slave2|
        slave2.vm.network "private_network", ip: "10.1.10.12"
        slave2.vm.hostname = "slave2"
    end
end
