FROM openjdk:17-alpine

WORKDIR /app

COPY target/*.jar .

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "spring-petclinic-3.1.0-SNAPSHOT.jar"]