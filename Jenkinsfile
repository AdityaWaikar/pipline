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
                    sh ''' docker login -u adityawaikar1007 -p Aditya@1007 '''
                    // // Login to Docker Hub
                    // withCredentials([usernamePassword(credentialsId: env.DOCKER_CREDENTIALS_ID, usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    //     // bat '''
                    //     // docker login -u %DOCKER_USERNAME% -p %DOCKER_PASSWORD%
                    //     // '''
                    //     bat ''' whoami '''
                    //     bat ''' dir '''
                    //     bat ''' docker login -u adityawaikar1007 -p Aditya@1007 '''
                    // }

                    // Pull the Docker image
                    // bat "docker pull %DOCKER_IMAGE%"
                }
            }
        }
    }
}
