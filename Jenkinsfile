pipeline{
	agent any
	tools {
		maven 'Maven 3.6.2'
	}
	stages{
		stage ('Clean') {
	 		steps {
				sh 'mvn clean'
	        	}
		}
	 	stage ('Package') {
			steps {
	      		sh 'mvn package'
	        	}	
		}
		stage ('CREATE DOCKER IMAGE') {
			steps {
	      		sh 'mvn docker:build'
	        	}	
		}
	}
}
