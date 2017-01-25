#!/bin/sh

docker run --name stftp-data --volume /etc/localtime:/etc/localtime:ro alexanderfefelov/stftp-data
docker run --name stftp-server --detach --publish 69:69/udp --volume /etc/localtime:/etc/localtime:ro --volumes-from stftp-data alexanderfefelov/stftp-server
