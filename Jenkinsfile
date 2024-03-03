pipeline {
    agent any

    tools {
        maven "3.9.6"
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
                sh 'docker build -t dockerdelete .'
            }
        }

        stage('Run Docker Container') {
            steps {
                // Run the Docker container
                sh 'docker run -d --name dockerdelete-container -p 6000:6000 dockerdelete'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
