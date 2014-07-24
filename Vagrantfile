Vagrant.configure("2") do |config|
  config.vm.box = 'chef/ubuntu-12.04'
  config.ssh.forward_agent = true
  config.vm.provision :shell, :path => 'provision.sh'
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--memory", "512"]
  end

  config.vm.define 'admin' do |guest|
    guest.vm.hostname = 'admin.ceph.rm'
    guest.vm.network :private_network, ip: '192.168.50.3'
  end
  
  config.vm.define 'node1' do |guest|
    guest.vm.hostname = "node1.ceph.rm"
    guest.vm.network :private_network, ip: '192.168.50.4'
  end
  
  config.vm.define 'node2' do |guest|
    guest.vm.hostname = "node2.ceph.rm"
    guest.vm.network :private_network, ip: '192.168.50.5'
  end
  
  config.vm.define 'node3' do |guest|
    guest.vm.hostname = "node3.ceph.rm"
    guest.vm.network :private_network, ip: '192.168.50.6'
  end
  
end