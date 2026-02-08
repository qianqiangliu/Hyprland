#!/bin/sh

export PKG_CONFIG_PATH=/path/to/new/wayland-protocols/install/share/pkgconfig:$PKG_CONFIG_PATH

CXX=clang++ CXXFLAGS=-std=gnu++26 make all

sudo make install
