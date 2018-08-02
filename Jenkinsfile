pipeline {
    def app="hi"
    //agent { dockerfile true } 
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        //new
        stage('Build dockerfile') {
            
            app = docker.build("daniellelagziel/autotask")
        }
         stage('Test') {
             app.inside {
                sh 'echo "Test pass"'
             }
        }
    }
}
