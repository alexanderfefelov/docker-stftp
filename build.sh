#!/bin/sh

docker build --tag alexanderfefelov/docker-stftp-data data
docker build --tag alexanderfefelov/docker-stftp-server server
