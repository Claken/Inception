FROM 		debian:buster
MAINTAINER	sachouam <sachouam@student.42.fr>

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y nginx openssl

ADD conf ./etc/nginx/sites-available/default

EXPOSE 80 443

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/ssl/certs/localhost.pem -keyout /etc/ssl/certs/localhost.key -subj "/C=FR/ST=75/L=Paris/O=42/OU=sachouam/CN=localhost"

CMD service nginx start
