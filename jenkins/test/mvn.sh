#!/bin/bash

echo "*****************************"
echo "*******Testing the Coder*********"
echo "*****************************"

docker run --rm -v $PWD/java-app:/app -v /home/vagrant/.m2:/root/.m2 -w /app maven:3-alpine "$@"

