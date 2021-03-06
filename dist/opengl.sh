#!/bin/bash
set -e

# Upgrade the Package Manager Sources
sudo apt-get -y upgrade

# Update the Package Manger Sources
sudo apt-get -y update

# Install Common Packages
sudo apt-get -y install software-properties-common zip unzip libssl-dev openssl wget build-essential cmake

# Installing GLUT, GLFW, GLEW, SOIL
sudo apt-get -y install freeglut3-dev libglfw3-dev libglew-dev libsoil-dev