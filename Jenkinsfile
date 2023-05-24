pipeline {
    agent any

    stages {
        stage('Authenticate with Docker Registry') {
            steps {
                script {
                    sh 'docker login -u alokpandey25 -p Alokpan777 registry.hub.docker.com/busybox'
                    sh 'docker pull alokpandey25/index-app:latest'
                    sh 'docker run -p 8080:80 alokpandey25/index-app:latest'
                }
            }
        }
    }
}
