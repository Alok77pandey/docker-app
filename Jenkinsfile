pipeline{
    
    agent any

	environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}

	stages {
	    
	    stage('gitclone') {

			steps {
				git 'https://github.com/Alok77pandey/docker-app.git'
			}
		}

		stage('Build') {

			steps {
				sh 'docker build -t alokpandey25/docdocdocdoc:latest .'
			}
		}

		stage('Login') {

			steps {
				sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
			}
		}

		stage('Push') {

			steps {
				sh 'docker push alokpandey25/docdocdocdoc:latest'
			}
		}
	}

	post {
		always {
			sh 'docker logout'
		}
	}

}
