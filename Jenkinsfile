pipeline {
    agent any

    stages {
        stage('Authenticate with Docker Registry') {
            steps {
                script {
                    sh 'docker login -u alokpandey25 -p Alokpan777 registry.hub.docker.com/busybox'
                }
            }
        }

        stage('Pull Docker Image') {
            steps {
                script {
                    sh 'docker pull alokpandey25/index-app:latest'
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -p 8080:80 -u alokpandey25 -p Alokpan777 alokpandey25/index-app:latest'
                }
            }
        }
    }
}

