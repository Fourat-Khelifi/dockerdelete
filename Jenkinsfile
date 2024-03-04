pipeline {
    agent none
    environment{
        JAVA_TOOL_OPTIONS ="-Duser.home=/var/maven"
    }
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'maven:3.9.6-eclipse-temurin-21'
                    args '-v /tmp/maven:/var/maven/.m2 -e MAVEN_CONFIG=/var/maven/.m2'
                }
            }
            steps {
                script {
                    def container = docker.image('maven:3.9.6-eclipse-temurin-21').run('-d -it -p 6000:6000', '--name my-container')
                    sh 'docker cp target/dockerdelete.jar ${container.id}:/dockerdelete.jar'
                    sh 'docker exec -d my-container java -jar /dockerdelete.jar'
                }
            }
        }
    }
    post {
        always {
            cleanWs()
        }
    }
}
