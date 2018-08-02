pipeline {
    
    agent { dockerfile true } 
    stages {
        stage('Build image') {
            steps {
                docker.build("daniellelagziel/autotask")
            }
        }
    }
}
