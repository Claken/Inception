FROM		debian:buster
MAINTAINER	sachouam <sachouam@student.42.fr>

RUN			apt-get -y update && apt-get -y upgrade
RUN			apt-get install -y wget vim systemd curl grep mariadb-client procps
RUN			apt-get install -y php php-fpm php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip php-mysqli

RUN         curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN         chmod +x wp-cli.phar
RUN         mv wp-cli.phar /usr/local/bin/wp-cli

RUN         mkdir -p /run/php
# create this directory in order to start /usr/sbin/php-fpm7.3. Otherwise : ERROR: Unable to create the PID file (/run/php/php7.3-fpm.pid).: No such file or directory (2)

WORKDIR     /etc/php/7.3/fpm/pool.d
RUN         sed -i 's|listen = /run/php/php7.3-fpm.sock|listen = 9000|g' www.conf
# for accepting requests coming from port 9000 (i.e. coming from nginx)

WORKDIR     /

COPY        ./run_wp.sh /usr/local/bin

EXPOSE		9000

ENTRYPOINT  ["/bin/bash", "run_wp.sh"]
CMD	        ["/usr/sbin/php-fpm7.3", "-F", "-R"]