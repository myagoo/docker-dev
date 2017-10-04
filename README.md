# docker-dev
A dockerized development environment

## Usage
 - Clone this project in the same directory as your other projects
 - Run `docker build -t dev .`
 - Then `docker run --name dev -i -t -u node -p 8080:8080 -v /home/myagoo/dev:/workspace dev bash`
 - And to reenter `docker exec -ti -u node dev script -q -c "/bin/bash" /dev/null`

## Useful docker commands
 - Clean exited container `docker rm $(docker ps -aq)`
 - Clean unused volumes `docker volume rm $(docker volume ls -q)`
 - Clean images `docker rmi $(docker images | awk '{if (NR!=1) {print $1}}')`