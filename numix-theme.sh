#!/bin/bash

apt install -y libglib2.0-dev libgdk-pixbuf2.0-dev libxml2-utils ruby-dev
gem install sass

cd ~/Downloads
git clone https://github.com/numixproject/numix-gtk-theme.git
cd numix-gtk-theme
make install
