pipeline {
    agent {
        docker {
            image "maven:3.9.6-eclipse-temurin-17"
        }
    }
    stages {
    stage('Build') {
                steps {
                    sh 'mvn -version'
                    sh 'mvn clean install'
                }
            }
    }
    post{
        always{
            cleanWs()
        }

  }
}
