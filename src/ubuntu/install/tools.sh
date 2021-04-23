#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install some common tools for further installation"
apt-get update 
apt-get install -y vim wget net-tools locales bzip2 curl sudo fonts-liberation xdg-utils \
    python-numpy #used for websockify/novnc
apt-get clean -y

# google-chrome 打开时候的依赖项
/etc/init.d/dbus start

echo "generate locales zh_CN.UTF-8"
locale-gen zh_CN.UTF-8