FROM maven:3.8.6

WORKDIR /app

COPY target/test-for-jenkins-0.0.1-SNAPSHOT.jar /app

CMD java -jar test-for-jenkins-0.0.1-SNAPSHOT.jar
