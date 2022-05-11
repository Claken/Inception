FROM 		debian:buster
MAINTAINER 	sachouam <sachouam@student.42.fr>

RUN		    apt-get -y update && apt-get -y upgrade
RUN		    apt-get install -y vim systemd mariadb-server mariadb-client procps

WORKDIR     /etc/mysql/mariadb.conf.d
RUN         sed -i 's|bind-address            = 127.0.0.1|# bind-address            = 127.0.0.1|g' 50-server.cnf

# WORKDIR     /etc/mysql/
# RUN         sed -i -e '$asocket=/var/lib/mysql/mysql.sock' my.cnf

WORKDIR     /
# RUN			nano /etc/tmpfiles.d/mysql.conf
# RUN			d /var/run/mysqld 0755 mysql mysql -

# ADD 		./database_conf.sql ./database_conf.sql
# RUN 		service mysql start && mysql -u root --skip-password < database_conf.sql

EXPOSE		3306

COPY		./run_mdb.sh /usr/local/bin

ENTRYPOINT	["/bin/bash", "run_mdb.sh"]
CMD         ["mysqld_safe"]
