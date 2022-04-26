FROM 		debian:buster
MAINTAINER	sachouam <sachouam@student.42.fr>

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y nginx openssl vim systemd

COPY    nginx.conf ./etc/nginx
COPY    nginx.conf ./etc/nginx/conf.d

EXPOSE 80 443

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/ssl/certs/sachouam.com.pem -keyout /etc/ssl/certs/sachouam.com.key -subj "/C=FR/ST=75/L=Paris/O=42/OU=sachouam/CN=sachouam.com"   

CMD ["nginx", "-g", "daemon off;"]

# link ports like this : 0.0.0.0:443->443/tcp