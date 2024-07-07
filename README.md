# ! README IN PROGRESS !

# INCEPTION
This project consists of setting up three services inside three differents containers : nginx, mariadb and wordpress.

# WHAT THIS PROJECT BROUGHT ME
- I have learned what an image and a container are,
- I have learned the importance and the utility of a tool like Docker ; it enables you to build images and to launch certain applications in containers,
- I have learned to use bash scripts in order to automate the execution of commands,
- I have learned to use MySQL to handle a database

# Prerequisites

You must install docker and docker-compose. </br>
If you use Linux, click on [this](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04) and [this](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04) link and follow their instructions.

You also need to add `sachouam.42.fr` as a domain name. </br>
Click on this [link](https://www.liquidweb.com/blog/edit-hosts-file-macos-windows-linux/) to know how to do it.

# Usage

First, type this command to build the project where the Makefile is :
```
make up
```
Then, when the building is finished, type this command :
```
make start
```
Finally, when the process is done, type this URL on your web browser :
```
https://localhost:443
```
Once this done, something like this will appear :
![Screenshot_from_2024-07-05_19-51-25](https://github.com/Claken/Inception/assets/51683861/f61b272e-b56c-4c46-94d2-1d0917b3e479)
