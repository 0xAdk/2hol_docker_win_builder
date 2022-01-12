#!/usr/bin/env bash

set -e

mkdir -p /tmp/overlay
mount -t tmpfs tmpfs /tmp/overlay
mkdir -p /tmp/overlay/{upper,work}
mkdir -p ./src
mount -t overlay overlay -o lowerdir=/src,upperdir=/tmp/overlay/upper,workdir=/tmp/overlay/work ./src

cd ./src/OneLife
./configure 3
cd ./gameSource/
make

cd ../build
./makeDistributionWindows win_build

cd windows
chown 1000:1000 -R 2HOL_win_build
cp -r 2HOL_win_build /output
