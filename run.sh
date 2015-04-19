#!/bin/sh

docker run --name stftp-data --volume /etc/localtime:/etc/localtime:ro alexanderfefelov/docker-stftp-data
docker run --name stftp-server --detach --publish 69:69/udp --volume /etc/localtime:/etc/localtime:ro --volumes-from stftp-data alexanderfefelov/docker-stftp-server
