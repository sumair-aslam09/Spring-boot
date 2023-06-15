# Dockerfile for building a Docker image that runs a Spring PetClinic application as a Docker container.

FROM openjdk:17-alpine

WORKDIR /app

COPY target/*.jar .

EXPOSE 8082

ENTRYPOINT ["java", "-jar", "spring-petclinic-3.1.0-SNAPSHOT.jar"]
