# 3D-Printing-Hub
## Description
Using the capabilities of Ultimaker Cura and a Raspberry Pi (the 4B model in my case), an upgrade to a Creality Ender 3 can be born. After installing Raspberry Pi OS Lite, cloning this repository, and running the setup.sh bash script, you should just be able to plug this newly made device into your nearest 3D printer compatable with Ultimaker software.
## Needed Technolgies
- Raspberry Pi model 3 or later
  - USB-C to USB-C power cable
  - HDMI micro cord and monitor (if you do not have a touchscreen display)
  - USB-A to whatever your printer uses for a USB connection
- MicroSD card
- USB/Bluetooth Keyboard (I tested this installation with a USB keyboard, so bluetooth instructions will be limited)
- Computer with RPi Imager installed
- 3D printer compatible with Ultimaker Cura
- Raspberry Pi compatible touchscreen (opitonal)
## Installation
1. Plug in the MicroSD card to the computer and run RPi Imager
  1.1. Click on choose device -> the model Pi you are using
  1.2. Click on choose OS -> Other raspberry Pi OS -> Raspberry Pi OS Lite
  1.3. Click on choose storage -> the name of the MicroSD card
  1.4. Click next
  1.5. Click edit properties -> Edit and change the settings as needed (SSH is optional, but is not used)
2. If you have a touchscreen, look for the setup instructions online. The model and instructions I used can be found [here](https://www.raspberrypi.com/documentation/accessories/display.html)
3. Power the Raspberry Pi with the USB-C cable and (if you do not have a touchscreen) plug in the HDMI micro cord into your monitor
5. Login to your account in the terminal
6. Type this command:
  sudo apt update && sudo apt upgrade ; sudo apt install git
7. Finally, type this command and follow the prompts:
  git clone https://github.com/Giona2/3D-Printing-Hub.git ; chmod +x 3D-Printing-Hub/setup.sh ; sudo 3D-Printing-Hub/setup.sh
8. When promped, reboot your system.
9. When Cura opens, connect the raspberry pi to your printer and run the setup processes
