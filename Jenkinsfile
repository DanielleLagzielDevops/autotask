node {
    def app
    stages {
    stage('Checkout') {
	steps {
		echo 'Checkout'
		git 'https://github.com/daniellelagziel/autotask.git'
	}
    }
    stage('Build image') {

        app = docker.build("daniellelagziel/autotask")
    }
 }
}
