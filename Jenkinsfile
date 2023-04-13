pipeline {
    agent any
    stages {
        stage('Build and push Docker image') {
            steps {
                withCredentials([[
                    $class: 'UsernamePasswordMultiBinding',
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'DOCKERHUB_USERNAME',
                    passwordVariable: 'DOCKERHUB_PASSWORD'
                ]]) {
                    docker.withRegistry("https://registry.hub.docker.com", "dockerhub-creds") {
                        docker.build("alokpandey25/docker-app").push()
                    }
                }
            }
        }
    }
}
