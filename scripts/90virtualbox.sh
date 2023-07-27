set -ux

if [ "$guest_additions_mode" = "disable" ]; then
    exit 0
fi

#
# packages need to install VBGA
#
sudo dnf -y install bzip2 elfutils-libelf-devel epel-release gcc kernel-devel-`uname -r` kernel-headers perl tar 
sudo dnf -y install dkms

VBOX_VERSION=$(cat /home/vagrant/.vbox_version)
cd /tmp
sudo mount -o loop /home/vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sudo sh /mnt/VBoxLinuxAdditions.run
sudo umount /mnt
sudo rm -rf /home/vagrant/VBoxGuestAdditions_*.iso

