// pipeline {
//     agent any
//     tools{
//         maven "3.9.6"
//     }
//     environment {
//             DOCKER_IMAGE = "my_first_docker_jenkins"
//         }
//     stages {
//         stage('Maven Build') {
//             steps {
//                 sh 'mvn -version'
//                 sh 'mvn clean install'
//             }
//         }
//         stage('Build Docker Image') {
//                 steps {
//                     script {
//                         sh "docker build -t $DOCKER_IMAGE ."
//                     }
//                 }
//             }
//             stage('Deploy to Docker') {
//                 steps {
//                     script {
//                         sh "C:/Program Files/Docker/Docker/DockerCli.exe run -d -p 8080:8080 $DOCKER_IMAGE"
//                     }
//                 }
//             }
//         }
//     post {
//         always{
//             cleanWs()
//         }
//     }
// }

/* Requires the Docker Pipeline plugin */
pipeline {
    agent { docker { image 'maven:3.9.6-eclipse-temurin-17-alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'mvn --version'
            }
        }
    }
}
