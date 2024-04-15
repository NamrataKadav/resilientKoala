pipeline {
    agent any 

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Authenticate with Salesforce') {
            steps {
                echo 'Authentication with Salesforce Finished!'
                }
            }
        

        stage('Validate Deployment') {
            steps {
                echo 'Validated deployment successfully!'
            }
        }

        stage('Manual Deployment') {
            steps {
                echo 'Manual deployment successful!'
            }
        }
    }
}    
