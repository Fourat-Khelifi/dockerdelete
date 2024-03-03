pipeline {
    agent {
        docker {
            // Use the Docker image that has Maven and Docker installed
            image 'your_custom_docker_agent_image'
            // Mount Docker socket to allow Docker commands within the container
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }

    environment {
        DOCKER_IMAGE = 'dockerdelete'
        CONTAINER_NAME = 'dockerdelete-container'
    }

    stages {
        stage('Maven Build') {
            steps {
                sh 'mvn -version'
                sh 'mvn clean install'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build the Docker image using the Dockerfile
                sh 'docker build -t ${DOCKER_IMAGE} .'
            }
        }

        stage('Run Docker Container') {
            steps {
                // Run the Docker container
                sh 'docker run -d --name ${CONTAINER_NAME} -p 6000:6000 ${DOCKER_IMAGE}'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}

