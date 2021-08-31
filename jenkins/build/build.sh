#!/bin/bash

# Copy the new Jar file to the build location.
cp -f java-app/target/*.jar jenkins/build/

echo "*****************************************"
echo "****** Building Docker Images************"
echo "*****************************************"

docker-compose -f jenkins/build/docker-compose-build.yml build --no-cache
