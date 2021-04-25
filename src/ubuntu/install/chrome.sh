#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

# 依赖
sudo apt-get install -y dialog

echo "Install Chrome Browser"
sudo apt install -y -f $HOME/google-chrome-stable_current_amd64.deb
#sudo dpkg -i $HOME/google-chrome-stable_current_amd64.deb
