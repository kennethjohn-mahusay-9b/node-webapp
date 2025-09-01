pipeline {
    agent {
      label 'linux-node'
    }
    stages {
        stage('Building Image') {
            steps {
                sh 'docker build -t webapp:latest .'
            }
        }
       stage('Build') {
            agent {
                docker {
                    image 'gradle:8.14.0-jdk21-alpine'
                }
            }
            steps {
                sh 'gradle -g gradle-user-home --version'
            }
        }
    }
}
