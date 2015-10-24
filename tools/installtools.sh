#!/bin/sh

pushd

#z
git clone https://github.com/rupa/z.git

#remove all git traces
find . -name ".git*" -exec rm -rf {} \;

#speedtest
wget -O speedtest-cli https://raw.github.com/sivel/speedtest-cli/master/speedtest_cli.py
chmod +x speedtest-cli
