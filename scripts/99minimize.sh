set -ux

sudo dd if=/dev/zero of=/EMPTY bs=1M
sudo rm -f /EMPTY
# Block until the empty file has been removed, otherwise, Packer
# will try to kill the box while the disk is still full and that's bad
sleep 2
sudo sync
sleep 2
sudo sync
sleep 2
sudo sync
