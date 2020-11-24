#!/bin/bash

PWD=`pwd` 

cd docker
pwd
ls -la 

docker build . -t ethereum:alpine

chmod +x ./install.sh;./install.sh

cd $PWD
ls -la $PWD
docker-compose up -d