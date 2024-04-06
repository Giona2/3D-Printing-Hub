#!/bin/bash

user=$(ls /home)

# Upgrade system and install nala
apt update && apt upgrade
apt install nala

# Remove clashing packages
nala remove openbox

# Install necessary packages
nala install xorg xterm
nala install snapd
snap install core
snap install cura-slicer

nala install snapd
snap install core
snap install cura-slicer
export XAUTHORITY=/home/$user/.Xauthority

reboot
