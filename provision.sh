wget -q -O- 'https://ceph.com/git/?p=ceph.git;a=blob_plain;f=keys/release.asc' | sudo apt-key add -
echo deb http://ceph.com/debian-firefly/ $(lsb_release -sc) main | sudo tee /etc/apt/sources.list.d/ceph.list

sudo apt-get update
sudo apt-get install dnsmasq vim openssh-server -y

sudo cp /vagrant/dnsmasq.conf /etc/dnsmasq.d/
sudo cp /vagrant/head /etc/resolvconf/resolv.conf.d/

sudo service dnsmasq restart
sudo service resolvconf restart

sudo useradd -d /home/ceph -m ceph
echo "ceph ALL = (root) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ceph
sudo chmod 0440 /etc/sudoers.d/ceph

cp /vagrant/ssh_config /home/vagrant/.ssh/config
cp /vagrant/id_rsa /home/vagrant/.ssh/
cp /vagrant/id_rsa.pub /home/vagrant/.ssh/
chown -R vagrant /home/vagrant/.ssh

mkdir -p /home/ceph/.ssh
cp /vagrant/id_rsa /home/ceph/.ssh/
cp /vagrant/id_rsa.pub /home/ceph/.ssh/
cp /vagrant/authorized_keys /home/ceph/.ssh/authorized_keys
chown -R ceph /home/ceph
chmod 600 /home/ceph/.ssh/id_rsa

apt-get upgrade -y