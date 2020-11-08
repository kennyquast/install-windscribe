#!/bin/bash

# Written by kenny quast (Quast Tech Solutions)
# Installation script for Windscribe CLI formy  Ubuntu-Server 20.04

# These were all taken from the official Windscribe site located here
# https://windscribe.com/guides/linux#how-to

# Add The Windscribe Signing key to APT
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key FDC247B7

# Add the repository to your sources.list
echo 'deb https://repo.windscribe.com/ubuntu bionic main' | sudo tee /etc/apt/sources.list.d/windscribe-repo.list

# Run apt-get update
sudo apt-get update

# Install windscribe-cli 
sudo apt-get install windscribe-cli

# Login to Windscribe and throw a little warning that you'll be asked for credentials

echo -e  "\e[91m**************************************************************"
echo "*     You will now be prompted for your login credentials    *"
echo "**************************************************************"
echo -e "\e[0m"
# Login to Windscribe 
windscribe login

# Connect to Windscribe
windscribe connect

# Show the help file for future reference
windscribe --help
