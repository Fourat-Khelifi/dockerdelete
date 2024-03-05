pipeline {
environment{
JAVA_TOOL_OPTIONS ="-D user.home=/home/jenkins"
}
    agent {
        dockerfile {
            args "-v /tmp/maven:/home/jenkins/.m2 -e MAVEN_CONFIG=/home/jenkins/.m2"

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
