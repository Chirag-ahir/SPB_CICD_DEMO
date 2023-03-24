pipeline {
    agent any
    tools{
        maven 'MAVEN_HOME'
    }
    
    stages{
    
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Chirag-ahir/SPB_CICD']]])
                bat 'mvn clean install'
            }
        }
        
	    stage('Build docker image'){
	        steps{
	            script{
	                bat 'docker build -t spb/spb_cicd .'
	            }
	        }
	    }
	    
    }
    
}