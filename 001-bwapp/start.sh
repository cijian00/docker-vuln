#!/bin/sh
sed -i "s/Indexes//gp" /etc/apache2/apache2.conf
find /var/lib/mysql -type f -exec touch {} \; && /etc/init.d/mysql start

chown -R mysql:mysql /var/run/mysqld/

mysql -e "grant all privileges on *.* to 'root'@'%' identified by 'bug';"
mysql -e "grant all privileges on *.* to 'root'@'localhost' identified by 'bug';"

cd /var/www/html/
unzip ./bWAPP_latest.zip
chmod -R 777 /var/www/html/

/etc/init.d/apache2 restart

curl -G "http://localhost/bWAPP/install.php?install=yes"

/bin/bash
tail -f /dev/null