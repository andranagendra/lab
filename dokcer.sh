#!/bin/bash

docker -v

if [ $? -ne 0 ];
then
  curl -fsSL https://get.docker.com -o get-docker.sh
  sh get-docker.sh
else
  echo "docker already installed" 
fi
 

