.PHONY:		build up start down destroy stop restart purge sclean display fclean logs

build:
			docker-compose -f srcs/docker-compose.yml build

up:
			mkdir ${HOME}/data
			mkdir ${HOME}/data/wp_files
			mkdir ${HOME}/data/wp_db
			docker-compose -f srcs/docker-compose.yml up -d
    
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

fclean: 
			docker system prune -a

sclean:		destroy purge

logs:
			docker-compose -f srcs/docker-compose.yml logs --tail=100 -f
