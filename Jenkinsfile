pipeline {
    agent any
        tools {
        // maven tool name and config
        maven 'maven' 
        // java tool name and config
        jdk 'oracle_jdk'
    }
    stages {
        stage('Checkout') {
                steps {
                    echo 'Checkout'
    				git 'https://github.com/zivkashtan/course.git'
                }
            }
            
        stage('Build') {
            steps {
                echo 'Clean Build'
                sh 'mvn clean compile'
            }
        }
        
        stage('Test') {
            steps {
                echo 'Testing'
                sh 'mvn test'
            }
        }
        
        stage('JaCoCo') {
            steps {
                echo 'Code Coverage'
                jacoco()
            }
        }
        
        stage('Package') {
            steps {
                echo 'Packaging'
                sh 'mvn package -DskipTests'
            } 
        }
        
        stage ('SonarQube Analysis'){
            steps{
            dir("."){
            withSonarQubeEnv('SonarQube server') {
            sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.2:sonar'
            }
            }
            }
            }
        
        stage('Deploy') {
            steps {
                            echo 'deploy war to artifactory'
                            sh 'mvn deploy:deploy-file' +
             ' -DgeneratePom=false -DrepositoryId=nexus' +
             ' -Durl=http://localhost:8081/repository/maven-releases/' +
             ' -Dpackaging=war -DgroupId=com.automateit -Dversion=1.11' +
            ' -DpomFile=pom.xml -Dfile=web/target/time-tracker-web-0.3.1.war'
 
            }
        }
        
        stage('Checkout scm') {
            steps {
                echo 'Test'
                checkout scm
            }
        }
        
       stage('Docker Build') {
          steps {
             sh "docker build -t daniel/autoimage:latest ."
             sh "docker login -u daniel -p admin localhost:8123"
            sh "docker push daniel/autoimage:latest"
      }
      }
                
    }

    post {
        always {
            echo 'JENKINS PIPELINE'
        }
        success {
            echo 'JENKINS PIPELINE SUCCESSFUL'
        }
        failure {
            echo 'JENKINS PIPELINE FAILED'
        }
        unstable {
            echo 'JENKINS PIPELINE WAS MARKED AS UNSTABLE'
        }
        changed {
            echo 'JENKINS PIPELINE STATUS HAS CHANGED SINCE LAST EXECUTION'
        }
    }
}
