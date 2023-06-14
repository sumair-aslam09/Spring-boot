Jenkins Pipeline to Deploy Petclinic Spring Boot Application
This repository contains a Jenkins pipeline script (Jenkinsfile) and associated files to deploy a Petclinic Spring Boot application. The pipeline script automates the following steps:

1.Building the application using Maven.
2.Creating a JAR file.
3.Building a Docker image.
4.Deploying the Docker image as a container.
5.Checking the application's status using a shell script.

Prerequisites
To use this Jenkins pipeline, ensure that the following requirements are met:

1.Jenkins is installed and configured.
2.Docker is installed on the Jenkins server.
3.The Petclinic Spring Boot application source code is available.
