#!/bin/sh

pushd

#z
git clone https://github.com/rupa/z.git

#remove all git traces
find . -name ".git*" -exec rm -rf {} \;

