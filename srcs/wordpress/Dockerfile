FROM		debian:buster
MAINTAINER	sachouam <sachouam@student.42.fr>

RUN			apt-get -y update && apt-get -y upgrade
RUN			apt-get install -y wget vim systemd curl grep mariadb-client procps
RUN			apt-get install -y php php-fpm php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip php-mysqli

RUN         curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN         chmod +x wp-cli.phar
RUN         mv wp-cli.phar /usr/local/bin/wp-cli

RUN         mkdir -p /run/php

WORKDIR     /etc/php/7.3/fpm/pool.d
RUN         sed -i 's|listen = /run/php/php7.3-fpm.sock|listen = 9000|g' www.conf

WORKDIR     /etc/mysql/mariadb.conf.d
RUN         sed -i 's|socket = /var/run/mysqld/mysqld.sock|# socket = /var/run/mysqld/mysqld.sock|g' 50-client.cnf

# WORKDIR     /etc/mysql/
# RUN         sed -i -e '$asocket=/var/lib/mysql/mysql.sock' my.cnf
WORKDIR     /

# WORKDIR		/var/www/html
# RUN			mkdir wordpress
# RUN         chmod -R 755 /var/www/html/wordpress

COPY        ./run_wp.sh /usr/local/bin

EXPOSE		9000

ENTRYPOINT  ["/bin/bash", "run_wp.sh"]
CMD	        ["/usr/sbin/php-fpm7.3", "-F", "-R"]