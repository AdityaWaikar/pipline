pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'adityawaikar1007/nginx:vo1'
        DOCKER_CREDENTIALS_ID = '7' // Jenkins credentials ID for Docker Hub
    }

    stages {
        stage('Pull Docker Image') {
            steps {
                script {
                    // Login to Docker Hub
                    withCredentials([usernamePassword(credentialsId: env.DOCKER_CREDENTIALS_ID, usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                        sh 'echo $DOCKER_PASSWORD | docker login -u $DOCKER_USERNAME --password-stdin'
                    }

                    // Pull the Docker image
                    bat "docker pull ${env.DOCKER_IMAGE}"
                }
            }
        }
    }

    post {
        always {
            // Logout from Docker Hub
            //bat 'docker logout'
        }
    }
}
