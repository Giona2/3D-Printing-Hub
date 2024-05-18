#!/bin/bash

user=$(ls /home)
repo=/home/$user/3D-Printing-Hub
bin_utils=$repo/bin_utils

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
apt -y update && apt -y upgrade
apt install -y nala

# Remove clashing packages
nala remove -y openbox

# Install necessary packages
nala install -y xorg xterm
nala install -y cura

# Run binary utilities
chmod +x $bin_utils/enable_auto_login
$bin_utils/enable_auto_login -- $user
chmod +x $bin_utils/init_xserver
$bin_utils/init_xserver $user

# Clean up
rm -r $repo

# Confirm reboot
echo -n "Would you like to reboot the system? [Y/n] "
read confirmed_reboot
if [ "$confirmed_reboot" == "Y" ] || [ "$confirmed_reboot" == "y" ]; then
	reboot
fi
