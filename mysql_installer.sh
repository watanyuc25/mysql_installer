#!/bin/bash
#install mariadb version 11.4
#get key and repo.
echo "Create repo Mysql v8.0.37"
cd /root
wget https://dev.mysql.com/get/mysql-apt-config_0.8.30-1_all.deb
dpkg -i mysql-apt-config_0.8.30-1_all.deb

echo "install mariadb"
#install mariadb
apt update
apt -y install mysql-server=8.0.37*

systemctl enable mysql
echo "service Mysql is enabled"