pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Running build automation'
                
            }
        }
        stage('Build Docker image') {
            when {
                branch 'master'
            }
            steps {
                script {
                    app = docker.build("nettadmin/testapp")
                    app.inside {
                        sh 'echo $(curl localhost:3100)'
                    }
                }
            }
        }
        stage('Push Docker Image') {
            when {
                branch 'master'
            }
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker_hub_login') {
                        app.push("${env.BUILD_NUMBER}")
                        app.push("latest")
                    }
                }
            }
        }
    }
}
