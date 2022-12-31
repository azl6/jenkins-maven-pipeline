#!/bin/bash

PASS=$1

docker login -u azold6 -p $PASS

docker build -t azold6/jenkins-with-spring:$BUILD_TAG .

docker push azold6/jenkins-with-spring:BUILD_TAG
