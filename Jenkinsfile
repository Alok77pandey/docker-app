pipeline {
    agent any

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
