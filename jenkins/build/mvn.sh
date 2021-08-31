#!/bin/bash

echo "*****************************"
echo "******* Building Jar*********"
echo "*****************************"

WORKSPACE=/home/vagrant/jenkins-data/jenkins_home/workspace/pipeline-docker-maven

docker run --rm -v $WORKSPACE/java-app:/app -v /home/vagrant/.m2:/root/.m2 -w /app maven:3-alpine "$@"

