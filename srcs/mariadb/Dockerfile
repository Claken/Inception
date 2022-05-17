FROM 		debian:buster
MAINTAINER 	sachouam <sachouam@student.42.fr>

RUN		    apt-get -y update && apt-get -y upgrade
RUN		    apt-get install -y vim systemd mariadb-server mariadb-client procps sudo

WORKDIR     /etc/mysql/mariadb.conf.d
RUN         sed -i 's|bind-address            = 127.0.0.1|# bind-address            = 127.0.0.1|g' 50-server.cnf
# This way, the mariadb host listen to all the other servers of the network
# If bind-address is bound to 127.0.0.1 (localhost), one can't connect to the MariaDB server from other host
RUN         sed -i 's|socket = /var/run/mysqld/mysqld.sock|# socket = /var/run/mysqld/mysqld.sock|g' 50-client.cnf

WORKDIR     /

EXPOSE		3306

COPY		./run_mdb.sh    /usr/local/bin

ENTRYPOINT	["/bin/bash", "run_mdb.sh"]
CMD         ["mysqld_safe"]