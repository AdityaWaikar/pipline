pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'your-dockerhub-username/your-image-name:your-tag'
    }

    stages {
        stage('Pull Docker Image') {
            steps {
                script {
                    docker.image("${DOCKER_IMAGE}").pull()
                }
            }
        }
    }
}
