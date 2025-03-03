pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'adityawaikar1007/nginx/nginx-ingress'
        DOCKER_CREDENTIALS_ID = '7' // Jenkins credentials ID for Docker Hub
    }

    stages {
        stage('Pull Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', DOCKER_CREDENTIALS_ID) {
                        docker.image("${DOCKER_IMAGE}").pull()
                    }
                }
            }
        }
    }
}
