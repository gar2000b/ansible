#!/bin/sh

sudo dd if=/dev/zero of=/home/swapfile bs=1024 count=2097152
sudo mkswap /home/swapfile
sudo swapon /home/swapfile
sudo swapon -a

sudo cp /etc/fstab /etc/fstab.backup_`date +%N`
sudo chmod 777 /etc/fstab
sudo echo '/home/swapfile swap swap defaults 0 0' >> /etc/fstab

swapon -s
