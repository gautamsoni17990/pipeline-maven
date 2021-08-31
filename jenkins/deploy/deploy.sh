#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth ubuntu@server.local:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish.sh ubuntu@server.local:/tmp/publish
ssh -i /opt/prod ubuntu@server.local "/tmp/publish"

