#!/bin/bash

file="/etc/init.d/jenkins"

if [ -f $file != 0 ];
then
    wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
    echo "deb https://pkg.jenkins.io/debian-stable binary/" >>/etc/apt/sources.list 
    apt-get update -y
    apt-get install -y jenkins
else
    echo "jenkins already installed"

fi
