#!/bin/bash

# Update and upgrade Ubuntu
sudo apt update
sudo apt -y upgrade

# Download SIFT CLI and key file to current user's Downloads directory
wget -P ~/Downloads https://github.com/sans-dfir/sift-cli/releases/download/v1.7.1/sift-cli-linux
wget -P ~/Downloads https://github.com/sans-dfir/sift-cli/releases/download/v1.7.1/sift-cli-linux.sha256.asc

# Change to Downloads folder for remainder of script
cd ~/Downloads

# Add and verify GPG key, SHA256 of SIFT CLI
gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys 22598A94
gpg --verify sift-cli-linux.sha256.asc
shasum -a 256 -c sift-cli-linux.sha256.asc

# Move SIFT CLI to directory in path and make executable
sudo mv sift-cli-linux /usr/local/bin/sift
sudo chmod 755 /usr/local/bin/sift
