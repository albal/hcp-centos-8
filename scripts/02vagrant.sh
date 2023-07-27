set -exu

# Vagrant specific
date | sudo tee -a /etc/vagrant_box_build_time

sudo mkdir -pm 700 /home/vagrant/.ssh
sudo curl -o /home/vagrant/.ssh/authorized_keys 'https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub'
sudo chown -R vagrant:vagrant /home/vagrant/.ssh
sudo chmod -R go-rwsx /home/vagrant/.ssh
