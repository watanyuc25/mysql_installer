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
apt install mysql-server=8.0.37*

systemctl enable mysql
echo "service Mysql is enabled"
# Set password root
echo "You can reset password for root with you self"
echo "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';"

echo "And you can create user with command."
echo "CREATE USER 'sammy'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';"

echo "And you can grant these privileges to user."
echo "GRANT CREATE, ALTER, DROP, INSERT, UPDATE, INDEX, DELETE, SELECT, REFERENCES, RELOAD on *.* TO 'sammy'@'localhost' WITH GRANT OPTION;"

