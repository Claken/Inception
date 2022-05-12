#!/bin/she
# cd /var/www/html/wordpress
set -xv
cd /var/www/html
wp-cli core download --allow-root
until mysqladmin -hmariadb -u$THE_USER -p$DB_PASSWORD ping && mariadb -hmariadb -u$THE_USER -p$DB_PASSWORD -e "SHOW DATABASES;" | grep "$DB_NAME"; do
	sleep 2
done
wp-cli config create --dbname=$DB_NAME --dbuser=$THE_USER --dbpass=$DB_PASSWORD --locale=en_EN --allow-root
wp-cli core install --url=$DOMAIN_NAME --title=Hello_World --admin_user=$THE_USER \
--admin_password=$WP_ADM_PASSWORD --admin_email=$WP_ADM_EMAIL --allow-root
wp-cli user create $WP_USER_NAME $WP_USER_EMAIL --role=subscriber --user_pass=$WP_USER_PASSWORD --allow-root
exec "$@"