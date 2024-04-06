#!/bin/bash

userhome=/home/$(ls /home)/

# Confirm install
echo
echo "This setup will remove"
echo "- openbox"
echo
echo "This setup will install"
echo "- nala"
echo "- xorg"
echo "- xterm"
echo "- Ultimaker Cura"
echo "======================="
echo -n "Would you like to proceed? [Y/n] "
read confirmed_install
if [ "$confirmed_install" != "Y" ] && [ "$confirmed_install" != "y" ]; then
	echo "Abort..."
 	exit 0
fi

# Upgrade system and install nala
apt update && apt upgrade
apt install nala

# Remove clashing packages
nala remove openbox

# Install necessary packages
nala install xorg xterm
wget -P $userhome https://github.com/Ultimaker/Cura/releases/download/5.7.0/UltiMaker-Cura-5.7.0-linux-X64.AppImage

# Confirm reboot
echo -n "Would you like to reboot the system? [Y/n] "
read confirmed_reboot
if [ "$confirmed_reboot" == "Y" ] || [ "$confirmed_reboot" == "y" ]; then
	reboot
fi
