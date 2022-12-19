#!/bin/bash

echo 
docker run --rm maven:3.8.6-eclipse-temurin-8-alpine mvn clean package
