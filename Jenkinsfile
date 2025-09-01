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
            steps {
                sh 'docker run webapp:latest'
            }
        }
    }
}
