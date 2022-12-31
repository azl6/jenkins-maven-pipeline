pipeline {
    agent any

    environment {
	DOCKERHUB_PWD=credentials('DOCKERHUB_PASSWORD')	    
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

        stage('Remove old application'){
            steps {
                sshagent(['chaveEC2']) {
                    sh 'ssh -i chaveec2forjenkins.pem ec2-user@ec2-54-207-226-81.sa-east-1.compute.amazonaws.com "docker stop \$(docker ps -aq)"'
                }
            }
	    }

        stage('Deploy') { 
            steps {
                sh 'echo "Deploying..."' 
            }
        }
    }
}
