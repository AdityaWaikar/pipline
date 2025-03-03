pipeline {
    agent any

    environment {
        DOCKER_IMAGE = adityawaikar1007/nginx'
        DOCKER_CREDENTIALS_ID = '7' // Jenkins credentials ID for Docker Hub
    }

    stages {
        stage('Pull Docker Image') {
            steps {
                script {
                    // Login to Docker Hub
                    withCredentials([usernamePassword(credentialsId: env.DOCKER_CREDENTIALS_ID, usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                        bat '''
                        echo %Aditya@1007% | docker login -u %DOCKER_USERNAME% --password-stdin
                        '''
                    }

                    // Pull the Docker image
                    bat "docker pull %DOCKER_IMAGE%"
                }
            }
        }
    }
}

