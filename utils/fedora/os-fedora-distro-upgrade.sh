#!/bin/bash

# Prepare Upgrade
sudo dnf5 distro-sync

# required?
# sudo dnf5 install dnf5-plugins

# Upgrade to Fedora Release
sudo dnf system-upgrade download --releasever=39 -y

# WARNING: Optial skipe broke dependencies
# sudo dnf system-upgrade download --releasever=40 -y --skip-broken

# Read about x11 vs wayland
# https://docs.fedoraproject.org/en-US/quick-docs/configuring-xorg-as-default-gnome-session/

# sudo dnf5 system-upgrade reboot

# sudo dnf5 remove $(rpm -qa 'kernel*' | grep "5.9.300*"

# create grub
sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg

sudo dnf install rpmconf
sudo rpmconf -a
sudo rpm --rebuilddb


sudo dnf remove --oldinstallonly
