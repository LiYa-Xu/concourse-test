#!/usr/bin/env bash
ENV DEBIAN_FRONTEND noninteractive
apt-get update
apt-get -y install debconf-utils
$debconf-set-selections <<< "postfix postfix/mailname string your.hostname.com"
$debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Internet Site'"
apt-get -y install mailutils
echo "Email Content:This is the content of mail. Welcome to ouyangpeng's blog : http://blog.csdn.net/ouyang_peng/" | mail -s "Email Subject : Hello from Linux Server by shell" xuliya@cn.ibm.com
