pipeline {
  agent any
  
script {
    docker.withRegistry("https://registry.hub.docker.com", "dockerhub-creds") {
        // your Docker commands here
        docker.build("alokpandey25/indexapp")
        docker.withImage("alokpandey25/indexapp") {
            // more Docker commands here
        }
    }
}

  stages {
    stage('Build') {
      steps {
        sh 'docker build -t alokpandey25/indexapp .'
      }
    }

    stage('Push to DockerHub') {
      steps {
          sh 'docker login -u alokpandey25 -p Alokpan777'
          sh 'docker push alokpandey25/indexapp'
          sh 'docker logout'
        }
      }

    stage('Deploy') {
      steps {
        sh 'docker run -d -p 80:80 alokpandey25/indexapp'
      }
    }
  }
}
