pipeline {
    agent {
        dockerfile {
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


}
