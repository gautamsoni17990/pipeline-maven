#!/bin/bash

echo "***************************"
echo "*****Pushing Image*********"
echo "***************************"

IMAGE="maven-project"

echo "*** Login ****"
docker login -u gautamsoni17990 -p $PASS

echo "*** tagging Image***"
docker tag  $IMAGE:$BUILD_TAG gautamsoni17990/$IMAGE:$BUILD_TAG

echo "*** Pushing Image ***"
docker push gautamsoni17990/$IMAGE:$BUILD_TAG
