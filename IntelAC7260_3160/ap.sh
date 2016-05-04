#! /bin/bash
sudo sed -i -e "s/\(ssid=\).*/\1$1/" /etc/hostapd/hostapd.conf
sudo /etc/init.d/hostapd stop
sudo ifdown wlan0
sudo ifconfig wlan0 down
sudo rm -rf /etc/network/interfaces
sudo cp /etc/network/interfaces.ap /etc/network/interfaces
sudo ifconfig wlan0 up
sudo ifup wlan0
sudo /etc/init.d/hostapd restarty
sudo service hostapd status
