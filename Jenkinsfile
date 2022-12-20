pipeline {
    agent any 
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
            }
        }

        stage('Deploy') { 
            steps {
                sh 'echo "Deploying..."' 
            }
        }
    }
}
