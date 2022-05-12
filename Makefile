.PHONY:		build up start down destroy stop restart purge sclean display fclean logs

DATA		= $(HOME)/data
VOL1		= $(DATA)/wp_files
VOL2		= $(DATA)/wp_db

$(DATA):
			mkdir $(DATA)

$(VOL1):
			mkdir $(VOL1)

$(VOL2):
			mkdir $(VOL2)

build:
			docker-compose -f srcs/docker-compose.yml build

up:			$(DATA) $(VOL1) $(VOL2)
			docker-compose -f srcs/docker-compose.yml up -d --build
    
start:
			docker-compose -f srcs/docker-compose.yml start

down:
			docker-compose -f srcs/docker-compose.yml down

destroy:
			docker-compose -f srcs/docker-compose.yml down -v
			sudo rm -rf ${HOME}/data

stop:
			docker-compose -f srcs/docker-compose.yml stop

restart:
			docker-compose -f srcs/docker-compose.yml stop
			docker-compose -f srcs/docker-compose.yml up -d

re:			stop build up

purge:
			docker rmi mariadb:inception
			docker rmi wordpress:inception
			docker rmi nginx:inception

display:
			docker ps -a
			docker images
			docker network ls
			docker volume ls

update:
			make down && make destroy && make up

fclean: 
			docker system prune -a

sclean:		destroy purge

logs:
			docker-compose -f srcs/docker-compose.yml logs --tail=100 -f
