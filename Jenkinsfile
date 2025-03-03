pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'adityawaikar1007/httpd:latest'
        DOCKER_CREDENTIALS_ID = '7' // Jenkins credentials ID for Docker Hub
    }

    stages {
        stage('Pull Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', DOCKER_CREDENTIALS_ID) {
                        docker.image("${DOCKER_IMAGE}").pull()
                    }
                }
            }
        }
    }
}
