pipeline {
    agent {
        docker {
            image "maven:3.9.6-eclipse-temurin-17"
        }
    }
    stages {
    stage('Build') {
                steps {
                    bat 'mvn -version'
                    bat 'mvn clean install'
                }
            }
    }

}
