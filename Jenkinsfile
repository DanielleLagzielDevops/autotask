pipeline {
  agent none
  stages {
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t dani .'
      }
    }
  }
}



//pipeline {
  //  //def app
   // agent { dockerfile true } 
    ////agent any
    //stages {
      //  stage('Checkout') {
        //    steps {
         //       echo 'Test'
           //     //checkout scm
            //}
        //}
    //}
//}
