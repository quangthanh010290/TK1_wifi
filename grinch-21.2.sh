#!/bin/sh

wget http://www.jarzebski.pl/files/jetsontk1/grinch-21.2.1/zImage
wget http://www.jarzebski.pl/files/jetsontk1/grinch-21.2.1/jetson-tk1-grinch-21.2.1-modules.tar.bz2
wget http://www.jarzebski.pl/files/jetsontk1/grinch-21.2.1/jetson-tk1-grinch-21.2.1-firmware.tar.bz2
sudo tar -C /lib/modules -vxjf jetson-tk1-grinch-21.2.1-modules.tar.bz2
sudo tar -C /lib -vxjf jetson-tk1-grinch-21.2.1-firmware.tar.bz2
sudo cp zImage /boot/zImage

