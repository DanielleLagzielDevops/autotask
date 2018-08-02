pipeline {
	agent  { dockerfile true }
    def app
	stages {
	    stage('Build image') {
		steps {

			app = docker.build("daniellelagziel/autotask")
		}
	     }	
	}
}
