pipeline {
    agent any 
    stages {
        stage('Build') { 
            steps {
                sh 'echo "Building..."'
		sh 'jenkins/build/build.sh'
		 
            }
        }
        stage('Test') { 
            steps {
                sh 'echo "Testing..."' 
            }
        }
        stage('Push'){
            steps {
                sh 'echo "Pushing image to Dockerhub..."'
            }
        }

        stage('Deploy') { 
            steps {
                sh 'echo "Deploying..."' 
            }
        }
    }
}
