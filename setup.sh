#!/bin/bash
###
 # @Author: hibana2077 hibana2077@gmail.com
 # @Date: 2023-11-23 10:45:52
 # @LastEditors: hibana2077 hibana2077@gmail.com
 # @LastEditTime: 2023-11-23 11:08:08
 # @FilePath: \multi_ojs\setup.sh
 # @Description: This is a shell script for installing docker and docker-compose
### 

# Check if Docker is available
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Installing Docker..."
    # Install Docker
    sudo apt-get update
    sudo apt-get install -y git vim neofetch
    git clone https://gist.github.com/40a965b83c11a4e8e195afb006bc13e3.git /tmp/docker-install
    sudo chmod +x /tmp/docker-install/install.sh
    sudo /tmp/docker-install/install.sh
    echo "Docker installed successfully."
else
    echo "Docker is already installed."
fi

# Check if Docker Compose is available
if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose is not installed. Installing Docker Compose..."
    # Install Docker Compose
    sudo apt-get update
    sudo apt-get install -y docker-compose
    echo "Docker Compose installed successfully."
else
    echo "Docker Compose is already installed."
fi
