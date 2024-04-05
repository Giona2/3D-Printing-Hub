user=$(ls /home)

apt update
apt upgrade
apt install nala

nala remove openbox
nala install xorg xterm

nala install snapd
snap install core
snap install cura-slicer
export XAUTHORITY=/home/$user/.Xauthority

reboot
