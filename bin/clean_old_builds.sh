#!/bin/bash

set -e
set -x

echo "### Cleaning old builds"

rm -rf build
xcodebuild clean

pushd neovim
rm -rf build
make distclean
popd

echo "### Cleaned old builds"
