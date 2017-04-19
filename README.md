# docker-dev
A dockerized development environment

## Usage
 - Clone this project in the same directory as your other projects
 - Run `docker build -t dev .`
 - Then `docker run -it -v /home/myagoo/dev:/workspace dev bash`

## Useful docker commands
 - Clean exited container `docker rm $(docker ps -aq)`
 - Clean unused volumes `docker volume rm $(docker volume ls -q)`
 - Clean images `docker rmi $(docker images | awk '{if (NR!=1) {print $1}}')`