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
                    image 'webapp:latets'
                }
            }
            steps {
                sh 'echo Heyyo:)'
            }
        }
    }
}
