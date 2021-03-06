#!/bin/bash
set -e

# Upgrade the Package Manager Sources
sudo apt-get -y upgrade

# Update the Package Manger Sources
sudo apt-get -y update

# Install Common Packages
sudo apt-get -y install software-properties-common zip unzip libssl-dev openssl wget build-essential cmake

# AntTweakBar version
ATB_VERSION="116"

# AntTweakBar Package URL
ATB_URL="http://heanet.dl.sourceforge.net/project/anttweakbar/AntTweakBar_$ATB_VERSION.zip"

# AntTweakBar Directory Name
ATB_DIR="atb-$ATB_VERSION"

# AntTweakBar Install Directory
ATB_INSTALL_LOCATION="/home/$USER/.libs"

# Create the directory
mkdir -p "$ATB_INSTALL_LOCATION"

# Download AntTweakBar
wget -O "/tmp/$ATB_DIR.zip" "$ATB_URL"

# Extract it
unzip "/tmp/$ATB_DIR.zip" -d "$ATB_INSTALL_LOCATION"

# Change to the directory
cd "$ATB_INSTALL_LOCATION/AntTweakBar/src"

# Make
make -j2
sudo make install

# Clean up
rm -rf "/tmp/$ATB_DIR.zip"