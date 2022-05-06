FROM 		debian:buster
MAINTAINER 	sachouam <sachouam@student.42.fr>

RUN		    apt-get -y update && apt-get -y upgrade
RUN		    apt-get install -y vim systemd mariadb-server mariadb-client procps

# ADD 		./database_conf.sql ./database_conf.sql
# RUN 		service mysql start && mysql -u root --skip-password < database_conf.sql

EXPOSE		3306

COPY		./run_mdb.sh /usr/local/bin

ENTRYPOINT	["/bin/bash", "run_mdb.sh"]
CMD         ["mysqld_safe"]
