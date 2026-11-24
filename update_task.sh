#!/usr/bin/env bash
set -e
TAG="cosmic-forest-golden-forest"
LIB="satin-servo.a"
URL="https://github.com/selalawnave/earthybrooklab/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
