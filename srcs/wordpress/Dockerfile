FROM		debian:buster
MAINTAINER	sachouam <sachouam@student.42.fr>

RUN			apt-get -y update && apt-get -y upgrade
RUN			apt-get install -y wget vim php systemd php7.3 php-mysql php-fpm php-cli php-mbstring

RUN			wget https://fr.wordpress.org/latest-fr_FR.tar.gz
RUN			tar -zxvf latest-fr_FR.tar.gz
RUN			mkdir /var/www/ && mkdir /var/www/html/
RUN			mv /wordpress /var/www/html/
RUN			chown -R www-data:www-data /var/www/html/wordpress/
RUN			chmod -R 755 /var/www/html/wordpress/

RUN			rm latest-fr_FR.tar.gz

ADD			./wp-config.php ./var/www/html/wordpress/wp-config.php

RUN			ls -l /usr/sbin/php-fpm7.3

EXPOSE		9000

CMD			["/usr/sbin/php-fpm7.3", "-F", "-R"]