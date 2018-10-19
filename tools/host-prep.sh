#!/bin/bash

# Mount host directory to the local /root/share path
# Add directory as device to vm in virt-manager
[[ -d /root/share ]] || mkdir /root/share
[[ -f /dev/share ]] mount -t 9p -o trans=virtio /dev/share /root/share
[[ -d ./drivers ]] || mkdir drivers
[[ -d ./iso ]] || mkdir iso 
[[ -d ./img ]] || mkdir img 

# Link private repo
# Download from https://launchpad.net/~/+archivesubscriptions/
ln apt-sources/maas-image-builder.list /etc/apt/sources.list.d/

# Add MIB repo GPG keys
apt update && apt install -y add-apt-key
add-apt-key BEEF83C77C14C957 -keyserver keyserver.ubuntu.com
add-apt-key BEEF83C77C14C957 --keyserver keyserver.ubuntu.com

# Install packages
apt update
apt install tmux build-essential subversion fakeroot qemu qemu-kvm qemu-utils libvirt-bin libvirt0 maas-image-builder -y
