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
        agent {
                docker {
                    image 'webapp:latest'
                }
            }
            steps {
                sh 'echo Heyyo :)'
            }
    }
}
