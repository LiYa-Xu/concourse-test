#!/usr/bin/env bash
apt-get update
apt-get install mailutils
echo "Email Content:This is the content of mail. Welcome to ouyangpeng's blog : http://blog.csdn.net/ouyang_peng/" | mail -s "Email Subject : Hello from Linux Server by shell" xuliya@cn.ibm.com
