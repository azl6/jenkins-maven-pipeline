FROM maven:3.8.6-eclipse-temurin-8-alpine

WORKDIR /app

COPY target/my-app-1.0-SNAPSHOT.jar /app

CMD java -jar my-app-1.0-SNAPSHOT.jar