FROM openjdk:8u111-jdk-alpine
VOLUME /tmp
ADD /target/config-server-db-1.0.0.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]