#!/bin/bash

apt install -y xfce4-dev-tools libgtk2.0-dev libxfce4ui-1-dev xfce4-panel-dev libwnck-dev

cd ~/Downloads

wget -O xfce4-windowck-0.4.4.tar.gz https://github.com/cedl38/xfce4-windowck-plugin/archive/v0.4.4.tar.gz
tar zxf xfce4-windowck-0.4.4.tar.gz

cd xfce4-windowck-plugin-0.4.4

./autogen.sh --prefix=/usr/
make
make install
