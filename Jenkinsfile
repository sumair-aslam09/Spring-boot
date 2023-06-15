/*
Jenkins pipeline script that deploys a Petclinic Spring Boot application built using Maven.
It builds a JAR file and deploys that JAR file inside a Docker container.
It also includes a shell script to check whether the application is running or not.
*/

pipeline {
    agent any

    // Pipeline stages
    stages {
        // Stage 1: Workspace clean
        stage('Workspace clean'){
            steps {
                cleanWs() // Clean the workspace
                echo "Building ${env.JOB_NAME}..." // Print a message indicating the start of the build
            }
        }

        // Stage 2: Git checkout
        stage('Git checkout'){
            steps {
                sh 'git clone https://github.com/sumair-aslam09/Spring-boot.git' // Clone the Git repository
            }
        }

        // Stage 3: Build
        stage('Build'){
            steps {
                // Run the build inside a Docker container with Maven
                withDockerContainer('maven:3-eclipse-temurin-17') {
                    sh 'mvn -Dmaven.test.failure.ignore=true package -f Spring-boot/pom.xml' // Build the project using Maven
                }
            }
        }

        // Stage 4: Build Image
        stage('Build Image'){
            steps {
                dir('Spring-boot'){
                    sh 'pwd' // Print the current directory path
                    sh 'docker build -t spring-boot .' // Build a Docker image from the project directory
                }
            }
        }

        // Stage 5: Run Container
        stage('Run Container'){
            steps {
                sh 'docker run -d -p 8084:8080 spring-boot' // Run a Docker container based on the built image
            }
        }

        // Stage 6: Status check
        stage('Status check') {
            steps {
                dir('Spring-boot'){
                    sh 'chmod +x status-check.sh' // Set execute permission for the status-check.sh script
                    sh './status-check.sh' // Run the status-check.sh script to check the status of the application
                }
            }
        }
    }
}
