#!/usr/bin/env bash
sudo apt-get install sendmail  
sudo apt-get install sendmail-cf
sudo apt-get install mailutils  
echo "test1111111111"
mail 

echo "test55555555555"
echo "Email Content:This is the content of mail. Welcome to ouyangpeng's blog : http://blog.csdn.net/ouyang_peng/" | mail -s "Email Subject : Hello from Linux Server by shell" xuliya@cn.ibm.com
