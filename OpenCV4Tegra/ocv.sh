#!/bin/bash
# $1: OpenCV4Tegra package name
sudo dpkg -i ~/OpenCV4Tegra/$1
sudo apt-get update
sudo apt-get install -y --force-yes libopencv4tegra libopencv4tegra-dev