#!/bin/sh
# env
set -xv
service mysql start
echo "CREATE DATABASE IF NOT EXISTS $DB_NAME;" | sudo mysql -u root --skip-password && \
echo "CREATE USER '$THE_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';" | sudo mysql -u root --skip-password && \
echo "GRANT ALL ON $DB_NAME.* TO '$THE_USER'@'%';" | sudo mysql -u root --skip-password && \
echo "FLUSH PRIVILEGES;" | sudo mysql -u root --skip-password
service mysql stop
exec "$@"