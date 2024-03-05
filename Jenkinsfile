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
        stage('Docker Build'){
            steps{
                script{
                    sh "docker build -t dockerdelete2 ."
                }
            }
        }
        stage('Docker Run'){
            steps{
                script{
                    sh "docker run -d -p 8081:6000 dockerdelete2"
                }
            }
        }
    }


}
