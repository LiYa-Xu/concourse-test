#!/usr/bin/env bash
apt-get update
apt-get upgrade
apt-get install sendmail  
apt-get install sendmail-cf
apt-get install mailutils  
echo "test1111111111"
mail 

echo "test55555555555"
echo "Email Content:This is the content of mail. Welcome to ouyangpeng's blog : http://blog.csdn.net/ouyang_peng/" | mail -s "Email Subject : Hello from Linux Server by shell" xuliya@cn.ibm.com
