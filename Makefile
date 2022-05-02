.PHONY:     build up start down destroy stop restart purge sclean display fclean logs

build:
            docker-compose -f srcs/docker-compose.yml build $(c)

up:
            docker-compose -f srcs/docker-compose.yml up -d $(c)
    
start:
            docker-compose -f srcs/docker-compose.yml start $(c)

down:
            docker-compose -f srcs/docker-compose.yml down $(c)

destroy:
            docker-compose -f srcs/docker-compose.yml down -v $(c)

stop:
            docker-compose -f srcs/docker-compose.yml stop $(c)

restart:
            docker-compose -f srcs/docker-compose.yml stop $(c)
            docker-compose -f srcs/docker-compose.yml up -d $(c)

re:         stop build up

purge:
            docker rmi maria-db
            docker rmi wordpress
            docker rmi nginx
            docker rmi debian:buster

display:
            docker ps -a
            docker images
            docker network ls
            docker volume ls

fclean: 
            docker system prune -a

sclean:     destroy purge

logs:
            docker-compose -f srcs/docker-compose.yml logs --tail=100 -f $(c)