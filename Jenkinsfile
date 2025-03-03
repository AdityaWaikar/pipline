pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'your-dockerhub-username/your-image-name:your-tag'
        DOCKER_CREDENTIALS_ID = 'dockerhub-credentials' // Jenkins credentials ID for Docker Hub
    }

    stages {
        stage('Pull Docker Image') {
            steps {
                script {
                    // Login to Docker Hub
                    withCredentials([usernamePassword(credentialsId: env.DOCKER_CREDENTIALS_ID, usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                        bat '''
                        echo %DOCKER_PASSWORD% | docker login -u %DOCKER_USERNAME% --password-stdin --timeout=600
                        '''
                    }

                    // Pull the Docker image
                    bat "docker pull %DOCKER_IMAGE%"
                }
            }
        }
    }
}

