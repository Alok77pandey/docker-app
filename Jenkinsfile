pipeline {
    agent any
    
    stages {
        stage('Test') {
            steps {
                sh 'docker run alokpandey25/index-app npm test'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'docker run -p 8080:80 alokpandey25/index-app'
            }
        }
    }
}

