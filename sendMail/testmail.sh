#!/usr/bin/env bash
#/usr/bin/debconf-set-selections
apt-get update
apt-get -y install debconf-utils
cat ~/Dockerfile 
echo "test"
ENV DEBIAN_FRONTEND=noninteractive
echo "test111111"
