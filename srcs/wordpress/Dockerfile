FROM		debian:buster
MAINTAINER	sachouam <sachouam@student.42.fr>

RUN		wget https://fr.wordpress.org/latest-fr_FR.tar.gz
RUN		tar -zxvf latest-fr_FR.tar.gz
RUN		mv wordpress/ /var/www/html/
RUN		chown -R www-data:www-data /var/www/html/wordpress/
RUN		chmod -R 755 /var/www/html/wordpress/
RUN		rm latest-fr_FR.tar.gz
