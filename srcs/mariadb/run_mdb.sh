#!/bin/sh
# env
set -xv
service mysql start
echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | mysql -u root --skip-password && \
echo "CREATE USER '$THE_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" | mysql -u root --skip-password && \
echo "GRANT ALL ON $DB_NAME.* TO '$THE_USER'@'%';" | mysql -u root --skip-password && \
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password
service mysql stop
exec "$@"