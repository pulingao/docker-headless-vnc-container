#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install Chrome Browser"
sudo apt install -y -f $HOME/google-chrome-stable_current_amd64.deb
