pipeline {
    agent any 
    environment {
        USERNAME = env.SF_USERNAME
    }
    stages {
        stage("List env variables") {
            steps {
                echo '$USERNAME'
            }
        }   
    }
}    
