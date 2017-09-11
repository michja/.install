#!/bin/sh
# install rofi on a fresh ubuntu 16.04

apt-get install -y git autoconf bison flex texinfo xutils-dev libtool \
  libxkbcommon-dev libglib2.0-dev libx11-xcb-dev libxcb-util-dev \
  libxcb-xkb-dev libxkbcommon-x11-dev libxcb-ewmh-dev libxcb-icccm4-dev \
  libxcb-randr0-dev libxcb-xinerama0-dev libpango1.0-dev librsvg2-dev \
  libstartup-notification0-dev

cd ~/Downloads

# check 0.11 not in apt repos
git clone https://github.com/libcheck/check.git
cd check
autoreconf --install
./configure
make
make install

cd ~/Downloads

# xcb-xrm isn't currently in apt repos
git clone https://github.com/Airblader/xcb-util-xrm.git
cd xcb-util-xrm
git submodule update --init
./autogen.sh
make
make install

cd ~/Downloads

git clone https://github.com/DaveDavenport/rofi.git 
cd rofi
git submodule update --init
autoreconf -i

mkdir build
cd build
../configure
make
make install
