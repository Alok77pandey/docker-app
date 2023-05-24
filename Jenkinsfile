pipeline {
    agent any
    
    stages {
        stage('Pull') {
            steps {
                sh 'docker pull alokpandey25/docker-app .'
            }
        }
        
        stage('Test') {
            steps {
                sh 'docker run alokpandey25/docker-app npm test'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'docker run -p 8080:80 alokpandey25/docker-app'
            }
        }
    }
}

