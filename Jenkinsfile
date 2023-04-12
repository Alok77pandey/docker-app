pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh 'docker build -t docker-app .'
      }
    }

    stage('Deploy') {
      steps {
        sh 'docker run -d -p 80:80 docker-app'
      }
    }
  }
}
