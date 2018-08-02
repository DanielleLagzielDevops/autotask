pipeline {
	agent  { dockerfile true }
    //def app
    //stages {
	//    stage('Checkout') {
	//	steps {
	//		echo 'Checkout'
	//		git 'https://github.com/daniellelagziel/autotask.git'
	//	}
	  //  }
	    stage('Build image') {
		    steps {
			
			app = docker.build("daniellelagziel/autotask")
		    }
	    }
     }
	
//}
