#!/bin/sh
# env
set -xv
service mysql start
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD'" | mysql -u root
echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | mysql -u root -p$MYSQL_ROOT_PASSWORD && \
echo "CREATE USER '$THE_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" | mysql -u root -p$MYSQL_ROOT_PASSWORD && \
echo "GRANT ALL ON $DB_NAME.* TO '$THE_USER'@'%';" | mysql -u root -p$MYSQL_ROOT_PASSWORD && \
echo "FLUSH PRIVILEGES;" | mysql -u root -p$MYSQL_ROOT_PASSWORD
mysqladmin -uroot -p$MYSQL_ROOT_PASSWORD shutdown
exec "$@"