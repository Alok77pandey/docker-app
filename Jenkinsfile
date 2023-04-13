pipeline {
  agent any

  environment {
    DOCKERHUB_USERNAME = credentials('dockerhub-creds').'username'
    DOCKERHUB_PASSWORD = credentials('dockerhub-creds').'password'
  }

  stages {
    stage('Build') {
      steps {
        sh 'docker build -t alokpandey25/docker-app .'
      }
    }

    stage('Push to DockerHub') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', usernameVariable: 'DOCKERHUB_USERNAME', passwordVariable: 'DOCKERHUB_PASSWORD')]) {
          sh 'docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD'
          sh 'docker push alokpandey25/docker-app'
          sh 'docker logout'
        }
      }
    }

    stage('Deploy') {
      steps {
        sh 'docker run -d -p 80:80 alokpandey25/docker-app'
      }
    }
  }
}
