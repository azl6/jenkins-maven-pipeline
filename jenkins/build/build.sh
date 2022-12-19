#!/bin/bash

docker run --rm -v '/var/jenkins_home/workspace/maven-pipeline:/app' -v '/root/.m2:/root/.m2' -w /app maven:3.8.6-eclipse-temurin-8-alpine mvn clean package
