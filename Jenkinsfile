pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'nginx:latest'
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
