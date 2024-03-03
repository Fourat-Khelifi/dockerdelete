pipeline {
    agent any
    tools{
        maven 'maven 3_5_0'
    }
    environment {
        DOCKER_IMAGE = 'docdel'
        CONTAINER_NAME = 'docdel123'
    }

    stages {
        stage('Maven Build') {
            steps {
                // Your existing build and test steps
                sh 'mvn clean install'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${DOCKER_IMAGE}:${BUILD_NUMBER}", "-f Dockerfile .")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Stop and remove existing container
                    sh "docker stop ${CONTAINER_NAME} || true"
                    sh "docker rm ${CONTAINER_NAME} || true"

                    // Run the Docker container
                    sh "docker run -d --name ${CONTAINER_NAME} -p 8080:8080 ${DOCKER_IMAGE}:${BUILD_NUMBER}"
                }
            }
        }
    }
}
