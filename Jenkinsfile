pipeline {
    agent {
        dockerfile {
            // Use the Docker image that has Maven and Docker installed
            label "docker"
            // Mount Docker socket to allow Docker commands within the container
            args '-v /temp/maven:/home/jenkins/.m2 -e MAVEN_CONFIG=/home/jenkins/.m2'
        }
    }



    stages {
        stage('Maven Build') {
            steps {
                sh 'mvn -version'
                sh 'mvn clean install'
            }
        }
    }


    post {
        always {
            cleanWs()
        }
    }
}

