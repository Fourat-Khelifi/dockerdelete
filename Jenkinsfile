pipeline {
    agent any

    stages {
        stage('Maven Build') {
            steps {
                sh 'mvn -version'
                sh 'mvn clean install'
            }
        }
    }
    post {
        always{
            cleanWs()
        }
    }
}
