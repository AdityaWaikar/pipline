pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'adityawaikar1007/nginx:v01'
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
