FROM		debian:buster
MAINTAINER	sachouam <sachouam@student.42.fr>

RUN			apt-get -y update && apt-get -y upgrade
RUN			apt-get install -y wget vim systemd php7.3 php-mysql php-fpm php-cli php-mbstring

RUN			wget https://fr.wordpress.org/latest-fr_FR.tar.gz
RUN			tar -zxvf latest-fr_FR.tar.gz
RUN			mkdir /var/www/ && mkdir /var/www/html/
RUN			mv /wordpress /var/www/html/
RUN			chown -R www-data:www-data /var/www/html/wordpress/
RUN			chmod -R 755 /var/www/html/wordpress/

RUN			wget https://files.phpmyadmin.net/phpMyAdmin/4.9.4/phpMyAdmin-4.9.4-all-languages.tar.gz
RUN			tar -zxvf phpMyAdmin-4.9.4-all-languages.tar.gz
RUN			mv phpMyAdmin-4.9.4-all-languages /var/www/html/phpMyAdmin/

RUN			rm latest-fr_FR.tar.gz
RUN			rm phpMyAdmin-4.9.4-all-languages.tar.gz
RUN			rm /var/www/html/phpMyAdmin/config.sample.inc.php

ADD			./wp-config.php ./var/www/html/wordpress/wp-config.php
ADD			./php_my_config.inc.php ./var/www/html/phpMyAdmin/php_my_config.inc.php

CMD			["/usr/sbin/php-fpm7.3", "-F", "-R"]