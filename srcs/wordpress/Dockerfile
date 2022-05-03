FROM		debian:buster
MAINTAINER	sachouam <sachouam@student.42.fr>

RUN			apt-get -y update && apt-get -y upgrade
RUN			apt-get install -y wget vim systemd curl
RUN			apt-get install -y php7.3 php7.3-mysql  php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip

RUN         curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN         chmod +x wp-cli.phar
RUN         mv wp-cli.phar /usr/local/bin/wp-cli

WORKDIR		/var/www/html
RUN			mkdir wordpress
WORKDIR		./wordpress

RUN         wp-cli core download --allow-root

RUN         wp-cli config create --dbname=sachoudb --dbuser=sachouam --dbpass=1234 --locale=en_EN --allow-root

RUN         wp-cli core install --url=sachouam.42.fr --title=Hello_World --admin_user=sachouam --admin_password=1234 --admin_email=sachouam@student.42.fr --allow-root

EXPOSE		9000

CMD			["/usr/sbin/php-fpm7.3", "-F", "-R"]
