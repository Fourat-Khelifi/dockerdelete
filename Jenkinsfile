pipeline {
    agent any
    tools{
        maven "3.9.6"
    }
    environment {
            DOCKER_IMAGE = "my_first_docker_jenkins"
        }
    stages {
        stage('Maven Build') {
            steps {
                sh 'mvn -version'
                sh 'mvn clean install'
            }
        }
    }
     stage('Build Docker Image') {
                steps {
                    script {
                        sh "docker build -t $DOCKER_IMAGE ."
                    }
                }
            }
            stage('Deploy to Docker') {
                steps {
                    script {
                        sh "docker run -d -p 8080:8080 $DOCKER_IMAGE"
                    }
                }
            }
    post {
        always{
            cleanWs()
        }
    }
}
