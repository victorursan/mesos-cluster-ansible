# Mesos-cluster-ansible

##Setup
* Run `vagrant up` to set up the cluster
* Run `ansible-playbook --ask-sudo-pass -i hosts site.yml` and you'll be prompted for a password that you'll find/change in the Vagrantfile (to change/add/remove the number of master/slave nodes, access the Vagrantfile and the hosts file and IPs of the nodes)
