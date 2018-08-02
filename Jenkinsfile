pipeline {
	agent  { dockerfile true }
    def app
    stage('Build image') {
    	steps {
			
		app = docker.build("daniellelagziel/autotask")
	}
     }	
}
