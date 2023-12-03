#!/bin/sh

sudo pacman -S qemu-base virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat ebtables iptables libguestfs --noconfirm

if [ "$XDG_CURRENT_DESKTOP" = "GNOME" ]; then
  sudo pacman -S gnome-boxes --noconfirm
else
  sudo pacman -S virt-manager --noconfirm
fi
  
sudo usermod -a -G libvirt $(whoami)
newgrp libvirt

sudo systemctl enable --now libvirtd

