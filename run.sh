#!/bin/sh

docker run --name stftp-data alexanderfefelov/docker-stftp-data
docker run --name stftp-server --detach --publish 69:69/udp --volumes-from stftp-data alexanderfefelov/docker-stftp-server
