#!/bin/bash

export JENKINS_INSTALL=/home/xtecuan/Projects/jenkins-installation


docker run -d -u root \
--privileged --network jenkins --network-alias docker \
--detach \
--restart always \
--name jenkins \
-p 8080:8080 \
 -v $JENKINS_INSTALL:/var/jenkins_home \
 -v /var/run/docker.sock:/var/run/docker.sock \
 jenkins/jenkins:alpine
