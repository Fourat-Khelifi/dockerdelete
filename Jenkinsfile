pipeline {
    agent any
    tools{
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
              script {
                  bat "docker pull maven:3.9.6-eclipse-temurin-17"
                    }
                }
            }
        stage('Deploy to Docker') {
            steps {
                    script {
                        bat "docker run -it -d maven:3.9.6-eclipse-temurin-17"
                        //bat 'docker run -it --name my_container alpine:latest /bin/sh'
                }
            }
        }

    }
}
