pipeline {
    agent any

    environment {
	    
    }
 
    stages {
        stage('Build') { 
            steps {
                sh 'echo "Building..."'
		sh 'mvn -DskipTests clean package'
		 
            }
        }
        stage('Test') { 
            steps {
		sh 'echo "Testing..."'
                sh 'mvn test'
            }
        }
        stage('Push'){
            steps {
                sh 'echo "Pushing image to Dockerhub..."'
		sh 'jenkins/push/push.sh $DOCKERHUB_PWD'
            }
        }

        stage('Deploy') { 
            steps {
                sh 'echo "Deploying..."' 
            }
        }
    }
}
