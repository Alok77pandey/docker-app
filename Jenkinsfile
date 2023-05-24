pipeline {
    agent any
    
    stages {
        stage('Test') {
            steps {
                sh 'docker pull alokpandey25/index-app:latest'
            }
        }
        
        stage('Run') {
            steps {
                sh 'docker run -p 8080:80 alokpandey25/index-app'
            }
        }
    }
}

