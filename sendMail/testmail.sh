#!/usr/bin/env bash
#/usr/bin/debconf-set-selections
apt-get update
apt-get -y install debconf-utils
apt-get install dialog apt-utils -y
apt-get install -y vim
echo "debconf1111" $debconf
$debconf-set-selections <<< "postfix postfix/mailname string your.hostname.com"
$debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Internet Site'"
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install mailutils
echo "test1111111111"
mail 

echo "test55555555555"
echo "Email Content:This is the content of mail. Welcome to ouyangpeng's blog : http://blog.csdn.net/ouyang_peng/" | mail -s "Email Subject : Hello from Linux Server by shell" xuliya@cn.ibm.com
