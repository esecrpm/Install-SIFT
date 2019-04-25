#!/bin/bash
wget -P ~/Downloads https://github.com/sans-dfir/sift-cli/releases/download/v1.7.1/sift-cli-linux
wget -P ~/Downloads https://github.com/sans-dfir/sift-cli/releases/download/v1.7.1/sift-cli-linux.sha256.asc
gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys 22598A94
gpg --verify ~Downloads/sift-cli-linux.sha256.asc
shasum -a 256 -c ~Downloads/sift-cli-linux.sha256.asc
sudo mv ~/Downloads/sift-cli-linux /usr/local/bin/sift
sudo chmod 755 /usr/local/bin/sift
