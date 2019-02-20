#!/usr/bin/env bash
#/usr/bin/debconf-set-selections
apt-get update
apt-get -y install debconf-utils
echo "debconf1111" $debconf
DEBIAN_FRONTEND=noninteractive apt-get -y install mailutils
echo "test1111111111"
mail -h
echo "test55555555555"
echo "Email Content:This is the content of mail. Welcome to ouyangpeng's blog : http://blog.csdn.net/ouyang_peng/" | mail -s "Email Subject : Hello from Linux Server by shell" xuliya@cn.ibm.com
