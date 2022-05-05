#!/bin/sh
cd /var/www/html/wordpress
wp-cli core download --allow-root
wp-cli config create --dbname=$DB_NAME --dbuser=$THE_USER --dbpass=$DB_PASSWORD --locale=en_EN --allow-root
wp-cli core install --url=$DOMAIN_NAME --title=Hello_World --admin_user=$THE_USER \
--admin_password=$WP_ADM_PASSWORD --admin_email=$WP_ADM_EMAIL --allow-root
wp-cli user create $WP_USER_NAME $WP_USER_EMAIL --role=subscriber --user_pass=$WP_USER_PASSWORD --allow-root
exec "$@"