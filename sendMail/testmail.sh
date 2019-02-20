#!/usr/bin/env bash
#/usr/bin/debconf-set-selections
apt-get update
apt-get -y install debconf-utils
echo "test"