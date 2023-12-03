#!/bin/sh

sudo pacman -S qemu-base virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat ebtables iptables libguestfs --noconfirm

sudo usermod -a -G libvirt $(whoami)
newgrp libvirt

sudo systemctl enable --now libvirtd

