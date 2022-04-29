FROM		debian:buster
MAINTAINER	sachouam <sachouam@student.42.fr>

RUN			apt-get -y update && apt-get -y upgrade
RUN			apt-get install -y wget vim systemd
RUN			apt-get install -y php5-fpm

ADD 			/home/sachouam/data/wp_db/database_conf.sql ./database_conf.sql
RUN 			service mysql start && mysql -u root --skip-password < database_conf.sql

RUN			wget https://fr.wordpress.org/latest-fr_FR.tar.gz
RUN			tar -zxvf latest-fr_FR.tar.gz
RUN			mkdir /var/www/ && mkdir /var/www/html/
RUN			mv /wordpress /var/www/html/
RUN			chown -R www-data:www-data /var/www/html/wordpress/
RUN			chmod -R 755 /var/www/html/wordpress/

RUN			rm latest-fr_FR.tar.gz

ADD			./wp-config.php ./var/www/html/wordpress/wp-config.php

EXPOSE			9000

CMD			["/usr/sbin/php-fpm7.3", "-F", "-R"]
