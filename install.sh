#!/bin/bash
sudo mkdir -p /usr/share/awesome/themes/applemann/ 
mkdir -p /home/martin/.config/awesome/ 

sudo cp -rf theme/* /usr/share/awesome/themes/applemann/
cp -rf src/* /home/martin/.config/awesome/
cp autorun.sh /home/martin/.config/awesome/ 


## Download arc-icon-theme
git clone https://github.com/horst3180/arc-icon-theme --depth 1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install


sudo apt-get install -y acpi xscreensaver


echo "Into: /home/martin/.config/awesome/email-widget/*.py scripts insert your password.. "

echo "DEBUG: awmtt start -C ~/.config/awesome/rc.lua"
