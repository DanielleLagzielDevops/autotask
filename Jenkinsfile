pipeline {
    agent { dockerfile true } 
    stages {
        stage('Build image') {
            steps {
                app = docker.build("daniellelagziel/autotask")
            }
        }
    }
}
