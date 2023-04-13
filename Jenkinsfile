pipeline {
    agent any

    environment {
        DOCKERHUB_USERNAME = credentials('dockerhub-creds').username
        DOCKERHUB_PASSWORD = credentials('dockerhub-creds').password
        IMAGE_NAME = "alokpandey25/indexapp"
    }

    stages {
        stage('Pull Docker Image') {
            steps {
                script {
                    docker.withRegistry("https://registry.hub.docker.com", "dockerhub-creds") {
                        def customImage = docker.image(indexapp)
                        customImage.pull()
                    }
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.withRegistry("", "") {
                        def container = docker.run("-p 8080:8080 -d ${indexapp}")
                        echo "Container ID: ${container.id}"
                    }
                }
            }
        }
    }
}
