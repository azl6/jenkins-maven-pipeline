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
                    sh """
                       ssh ec2-user@54.94.244.163 "/home/ec2-user/remove.sh"
                    """
                }
            }
	    }

        stage('Deploy') { 
            steps {
                sh 'echo "Deploying..."' 

                sshagent(['chaveEC2']) {
                    sh """
                       ssh ec2-user@54.94.244.163 "docker run -p 8080:8081 --rm -d azold6/jenkins-with-spring:$BUILD_TAG"
                    """
                }
                
            }
        }
    }
}
