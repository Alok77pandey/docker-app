pipeline {
    agent any
    
    stages {
        stage('Test') {
            steps {
                echo 'docker run alokpandey25/index-app tested at the terminal'
            }
        }
        
        stage('Run') {
            steps {
                sh 'docker run -p 8080:80 alokpandey25/index-app'
            }
        }
    }
}

